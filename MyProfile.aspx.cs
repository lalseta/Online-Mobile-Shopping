using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class MyProfile : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.Title = "My Profile";
        string con = System.Configuration.ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        cn=new SqlConnection(con);
        Panel1.Visible = false;
        if (!IsPostBack)
        {
            profilefill();
        }
    }
    void profilefill()
    {
        cn.Open();
        string select = "select firstname,lastname,emailid,mobileno from Registration where username='"+Session["username"]+"'";
        SqlDataAdapter da = new SqlDataAdapter(select,cn);
        DataSet ds = new DataSet();
        da.Fill(ds);
        txt_fname.Text = ds.Tables[0].Rows[0]["firstname"].ToString();
        txt_lname.Text = ds.Tables[0].Rows[0]["lastname"].ToString();
        txt_emailid.Text = ds.Tables[0].Rows[0]["emailid"].ToString();
        txt_mno.Text = ds.Tables[0].Rows[0]["mobileno"].ToString();
        cn.Close();
    }
    protected void btn_save_Click(object sender, EventArgs e)
    {
        SqlCommand cm = new SqlCommand();
        cm.CommandText = "update Registration set firstname='"+txt_fname.Text+"',lastname='"+txt_lname.Text+"',emailid='"+txt_emailid.Text+"',mobileno='"+txt_mno.Text+"' where username='"+Session["username"]+"'";
        cn.Open();
        cm.Connection = cn;
        int i=cm.ExecuteNonQuery();
        cn.Close();
        if (i > 0)
        {
            Panel1.Visible = true;
        }
    }
}