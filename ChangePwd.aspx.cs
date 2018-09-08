using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class ChangePwd : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cm;
    protected void Page_Load(object sender, EventArgs e)
    {
       
        string con = System.Configuration.ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        cn = new SqlConnection(con);
        pnl_valid.Visible = false;
        pnl_invalid.Visible = false;
    }
    protected void btn_changepwd_Click(object sender, EventArgs e)
    {
        cn.Open();
        string select = "select password from Registration where username='"+Session["username"]+"' and password='"+txt_oldpwd.Text+"'";
        SqlDataAdapter da = new SqlDataAdapter(select,cn);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            cm = new SqlCommand();
            cm.CommandText = "update Registration set password='" + txt_newpwd.Text + "' where username='" + Session["username"] + "'";
            cm.Connection = cn;
            int i = cm.ExecuteNonQuery();
            if (i > 0)
            {
                pnl_valid.Visible = true;
                pnl_invalid.Visible = false;
            }
        }
        else
        {
            pnl_invalid.Visible = true;
        }
    }
}