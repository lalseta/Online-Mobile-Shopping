using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Collection : System.Web.UI.Page
{
    SqlConnection cn;
    string categoryid,categoryname,productname,temp;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        
        temp = DropDownList1.SelectedValue.ToString();
        string con = System.Configuration.ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        cn = new SqlConnection(con);
        if (Page.IsPostBack == false)
        {
            dlfill();
        }
       
       
    }
    protected void dlfill()
    {
        //string temp = "productname";
         categoryid = Request.QueryString["cid"];
         Session["cid"] = categoryid;
         categoryname = Request.QueryString["name"];
        productname=Request.QueryString["pname"];
        lblcname.Text = categoryname;
        lbl_name.Text = categoryname;
        cn.Open();
        string select;
        //or productname LIKE '%'+'" + productname + "'+'%'
        //or productname='"+productname+"'
        if (categoryid == null)
        {
             select = "select productid,productname,productimage,price,date from Product where   productname LIKE '%'+'" + productname + "'+'%'  order by '" + temp + "'";
        }
        else
        {
             select = "select productid,productname,productimage,price,date from Product where  categoryid='" + categoryid + "'  order by '" + temp + "'";
        }
        SqlDataAdapter da = new SqlDataAdapter(select,cn);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count == 0)
        {
            lbl_Nodata.Visible = true;
            Panel1.Visible = false;
        }
       
        dlcollection.DataSource = ds.Tables[0];
        dlcollection.DataBind();
        cn.Close();
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        temp = DropDownList1.SelectedValue.ToString();
        dlfill();
    }
    protected void LinkButton8_Click(object sender, EventArgs e)
    {
        Session.Remove("cid");
        Response.Redirect("~/Home.aspx");
    }
}
