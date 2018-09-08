using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class Logo_MasterPage1 : System.Web.UI.MasterPage
{
    SqlConnection cn;
    //protected void page_Init()
    //{
    //    Response.Cache.SetNoServerCaching();
    //    Response.Cache.SetCacheability(HttpCacheability.NoCache);
    //    Response.Cache.SetNoStore();
    //    Response.Cache.SetExpires(new DateTime(1900, 01, 01, 00, 00, 00, 00));
    //}
    protected void Page_Load(object sender, EventArgs e)
    {

        string con = System.Configuration.ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        cn = new SqlConnection(con);

        if (Session["username"] != null)
        {
            wlclbl.Text = "Welcome To Online Store" + " " + Session["username"];
            Login.Visible = false;
            Logout.Visible = true;
        }
        if (IsPostBack == false)
        {
            dlfill();
        }
        if (Session["cart"] != null)
        {
            DataTable dt = (DataTable)Session["cart"];
            // Image1.Visible = true;
            lblrs.Visible = true;
            lblcart.Text = dt.Rows.Count.ToString() + " Items In your Cart";
            lblrs.Text = Session["ntamt"].ToString();
        }
        else
        {
            lblcart.Text = "You Have No item In Your Cart";
        }

    }
    void dlfill()
    {
        cn.Open();
        string s = "select categoryid,categoryname from Category";
        SqlDataAdapter da = new SqlDataAdapter(s, cn);
        DataSet ds = new DataSet();
        da.Fill(ds);
        DataList1.DataSource = ds.Tables[0];
        DataList1.DataBind();
        cn.Close();
    }
    protected void Logout_Click(object sender, EventArgs e)
    {

        //Session.Clear();
        Session.RemoveAll();
        Logout.Visible = false;
        Login.Visible = true;
        lblcart.Text = "You Have No item In Your Cart";
        Response.Redirect("Home.aspx");

    }

    protected void Login_Click(object sender, EventArgs e)
    {
        if (DataList1.Visible == true)
        {
            DataList1.Visible = false;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string pname = TextBox1.Text.ToString().Trim();
        Response.Redirect("Collection.aspx?pname=" + pname);
    }
    protected void imgbtn_Click(object sender, ImageClickEventArgs e)
    {

        //if (Session["username"] != null)
        //{
        Response.Redirect("shoppingcart.aspx");
        //}
        //else
        //{
        //    Response.Redirect("login1.aspx?url=" + "shoppingcart.aspx");
        //}
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            Response.Redirect("MyProfile.aspx");
        }
        else
        {
            Response.Redirect("login1.aspx?url=" + "MyProfile.aspx");
        }
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        //if (Session["username"] != null)
        //{
        Response.Redirect("shoppingcart.aspx");
        //}
        //else
        //{
        Response.Redirect("login1.aspx?url=" + "shoppingcart.aspx");
        // }
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Response.Redirect("Help.aspx");
    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        Response.Redirect("About.aspx");
    }
    
}
