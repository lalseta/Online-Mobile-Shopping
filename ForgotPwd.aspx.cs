using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net.Mail;
using System.Web.Mail;
public partial class ForgotPwd : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        string con = System.Configuration.ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        cn = new SqlConnection(con);
        pnl_valid.Visible = false;
        pnl_invalid.Visible = false;
    }
    protected void btnpwd_Click(object sender, EventArgs e)
    {
        cn.Open();
        string select="select password from Registration where emailid='"+txtfpwd.Text+"'";
        SqlDataAdapter da = new SqlDataAdapter(select,cn);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            string password = ds.Tables[0].Rows[0]["password"].ToString().Trim();
            System.Net.Mail.MailMessage msg = new System.Net.Mail.MailMessage();
            MailAddress address = new MailAddress("kadiagokul@gmail.com");
            msg.From = address;
            msg.To.Add(txtfpwd.Text);
            msg.Body = "Your Account Password IS :" + password + ".";
            msg.Subject = "Forgot Password";
            SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = new System.Net.NetworkCredential("kadiagokul@gmail.com", "kadiagokulmaulesh");
            smtp.EnableSsl = true;
            smtp.Port =587;
            smtp.Host = "smtp.gmail.com";
            smtp.EnableSsl = true;
            smtp.Send(msg);
            pnl_valid.Visible = true;
        }
        else
        {
            pnl_invalid.Visible = true;
        }

    }
}