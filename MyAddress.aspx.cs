using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class MyAddress : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        string con = System.Configuration.ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        cn = new SqlConnection(con);
        Panel1.Visible = false;
        if (!IsPostBack)
        {
            addressfill();
        }
    }
    void addressfill()
    {
        cn.Open();
        string select = "select firstname,lastname,address,city,state,pincode,country from Registration where username='"+Session["username"]+"'";
        SqlDataAdapter da = new SqlDataAdapter(select, cn);
        DataSet ds = new DataSet();
        da.Fill(ds);
        //frm_add.DataSource = ds.Tables[0];
        //frm_add.DataBind();
        //Panel panel1 = (Panel)frm_add.Row.FindControl("Panel1");
        //panel1.Visible = false;
        txt_fname.Text = ds.Tables[0].Rows[0]["firstname"].ToString();
        txt_lname.Text = ds.Tables[0].Rows[0]["lastname"].ToString();
        txt_address.Text = ds.Tables[0].Rows[0]["address"].ToString();
        txt_city.Text = ds.Tables[0].Rows[0]["city"].ToString();
        txt_pin.Text = ds.Tables[0].Rows[0]["pincode"].ToString();
        txt_state.Text = ds.Tables[0].Rows[0]["state"].ToString();
        ddl_country.SelectedValue = ds.Tables[0].Rows[0]["country"].ToString(); 
        cn.Close();
    }
    protected void btn_save_Click(object sender, EventArgs e)
    {
        //TextBox txt_fname = (TextBox)frm_add.Row.FindControl("txt_fname");
        //TextBox txt_lname = (TextBox)frm_add.Row.FindControl("txt_lname");
        //TextBox txt_address = (TextBox)frm_add.Row.FindControl("txt_address");
        //TextBox txt_city= (TextBox)frm_add.Row.FindControl("txt_city");
        //TextBox txt_pincode = (TextBox)frm_add.Row.FindControl("txt_pin");
        //TextBox txt_state = (TextBox)frm_add.Row.FindControl("txt_state");
        //DropDownList ddl_country = (DropDownList)frm_add.Row.FindControl("ddl_country");
        SqlCommand cm = new SqlCommand();
       
       cm.CommandText = "update Registration set firstname='" + txt_fname.Text + "',lastname='" + txt_lname.Text + "',address='" + txt_address.Text + "',city='" + txt_city.Text + "',state='"+txt_state.Text+"',country='"+ddl_country.SelectedValue+"' where username='" + Session["username"] + "'";
      //  cm.CommandText = "update Registration set firstname='" + txt_fname.Text + "',lastname='" + txt_lname.Text + "',address='" + txt_address.Text + "',city='" + txt_city.Text + "',pincode='"+txt_pincode.Text+"',state='" + txt_state.Text + "',country='" + ddl_country.SelectedValue + "' where username='" + Session["username"] + "'";
        cn.Open();
        cm.Connection = cn;
        int i=cm.ExecuteNonQuery();
        cn.Close();
        if (i > 0)
        {
            Panel1.Visible = true;
            //Panel panel1 = (Panel)frm_add.Row.FindControl("Panel1");
            //panel1.Visible = true ;
        }
    }
}