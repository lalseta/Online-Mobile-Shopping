using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class login1 : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cm;
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.Title = "Login";
        string con = System.Configuration.ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        cn = new SqlConnection(con);
    }
    protected void btn_create_Click1(object sender, EventArgs e)
    {
        Response.Redirect("UserRegistration.aspx");
    }
    protected void btn_login_Click1(object sender, EventArgs e)
    {

        cn.Open();
        Session["username"] = txt_username.Text;
        string select = "select username,password,usertype from Registration where username='" + Session["username"] + "' and password='" + txt_pass.Text + "'";
        SqlDataAdapter da = new SqlDataAdapter(select, cn);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            if (ds.Tables[0].Rows[0]["usertype"].ToString().Trim() == "admin")
            {
                Response.Redirect("Admin/Category.aspx");
            }
            else if (ds.Tables[0].Rows[0]["usertype"].ToString().Trim() == "user")
            {

                string url;
                url = Request.QueryString["url"];
                if (url != null)
                {
                    Response.Redirect(url);
                }
                else
                {
                    Response.Redirect("Home.aspx");
                }

            }
        }
        else
        {
            lblerror.Visible = true;
        }
        cn.Close();
    }
    protected void forgotpwd_Click(object sender, EventArgs e)
    {
        Response.Redirect("ForgotPwd.aspx");
    }
        }
    
