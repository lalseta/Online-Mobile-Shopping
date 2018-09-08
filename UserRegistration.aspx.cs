using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class UserRegistration : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cm;
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.Title = "Registration";
        
        string con = System.Configuration.ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        cn = new SqlConnection(con);
    }
   
    protected void txt_username_TextChanged(object sender, EventArgs e)
    {
          if (!string.IsNullOrEmpty(txt_username.Text))
        {
            cn.Open();
            SqlCommand cmd = new SqlCommand("select username from Registration where username=@username", cn);
            cmd.Parameters.AddWithValue("@username", txt_username.Text);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                //checkusername.Visible = true;
                //imgstatus.ImageUrl = "NotAvailable.jpg";
                checkusername.Visible = true;
                imgstatus.ImageUrl = "Logo/NotAvailable.jpg";
                lblStatus.Text = "UserName Already Taken";
                System.Threading.Thread.Sleep(500);
            }
            else
            {
                checkusername.Visible = true;
                imgstatus.ImageUrl = "Logo/Icon_Available.gif";
                lblStatus.Text = "UserName Available";
                System.Threading.Thread.Sleep(500);
            }
            cn.Close();
        }

    }
  
    protected void btn_signup_Click1(object sender, EventArgs e)
    {
        Session["username"] = txt_username.Text;
       
        string date = DateTime.Now.ToShortDateString();
        cn.Open();

        if (lblStatus.Text == "UserName Available")
        {
            Response.Write("<script>alert('Successfully Inserted')</script>");
            string insert = "insert into Registration values('" + txt_username.Text + "','" + txt_cpass.Text + "','" + txt_fname.Text + "','" + txt_lname.Text + "','" + txt_add.Text + "','" + txt_city.Text + "','"+txt_pin.Text+"','" + txt_state.Text + "','" + ddl_country.SelectedItem + "','" + rb_gender.SelectedItem + "','" + ddl_date.SelectedItem + '/' + ddl_month.SelectedItem + '/' + ddl_year.SelectedItem + "','" + txt_eid.Text + "','" + txt_mno.Text + "','user','" + date + "')";
            cm = new SqlCommand(insert, cn);
            SqlDataReader dr = cm.ExecuteReader();

            if (dr.HasRows)
            {
                Response.Write("UserRegistration.aspx");
            }
            else
            {
                Response.Redirect("Home.aspx");

            }
        }
        else
        {
            Response.Write("<script>alert('Username Is Already Taken')</script>");
            imgstatus.ImageUrl = "Logo/NotAvailable.jpg";
            lblStatus.Text = "UserName Already Taken";
        }
       // +
        //cm.CommandText = "insert into Registration values('" + txt_username.Text + "','" + txt_cpass.Text + "','" + txt_fname.Text + "','" + txt_lname.Text + "','" + txt_add.Text + "','" + txt_city.Text + "','" + txt_state.Text + "','" + ddl_country.SelectedItem + "','" + rb_gender.SelectedItem + "','" + ddl_date.SelectedItem + '/' + ddl_month.SelectedItem + '/' + ddl_year.SelectedItem + "','" + txt_eid.Text + "','" + txt_mno.Text + "','user')";
        //cm.Connection = cn;
        //cm.ExecuteNonQuery();
        //cn.Close();
    }
}