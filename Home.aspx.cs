using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Home : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
       
        string con = System.Configuration.ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        cn = new SqlConnection(con);
        cn.Open();
        if (IsPostBack == false)
        {
            
            dlc();
            dla();
            dlt();
            dlb();

        }
        cn.Close();

    }
    void dlc()
    {
        
        string select = "select top 4  productid,productname,productimage,price,date from Product where categoryid='56' order by date desc";
        SqlDataAdapter da = new SqlDataAdapter(select, cn);
        DataSet ds = new DataSet();
        da.Fill(ds);
        dl_cc.DataSource = ds.Tables[0];
        dl_cc.DataBind();
       
    }
    void dlb()
    {
        
        string select = "select top 4  productid,productname,productimage,price,date from Product where categoryid='55' order by date desc";
        SqlDataAdapter da = new SqlDataAdapter(select, cn);
        DataSet ds = new DataSet();
        da.Fill(ds);
        dl_bedcover.DataSource = ds.Tables[0];
        dl_bedcover.DataBind();
        
    }
    void dla()
    {
        
        string select = "select top 4  productid,productname,productimage,price,date from Product where categoryid='58' order by date desc";
        SqlDataAdapter da = new SqlDataAdapter(select, cn);
        DataSet ds = new DataSet();
        da.Fill(ds);
        dl_hb.DataSource = ds.Tables[0];
        dl_hb.DataBind();
        
    }
    void dlt()
    {
        
        string select = "select top 4  productid,productname,productimage,price,date from Product where categoryid='57' order by date desc";
        SqlDataAdapter da = new SqlDataAdapter(select, cn);
        DataSet ds = new DataSet();
        da.Fill(ds);
        dl_tp.DataSource = ds.Tables[0];
        dl_tp.DataBind();
    }
}