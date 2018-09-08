using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class OrderConfirmation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        lbl_tranid.Text = Request.QueryString["transid"];
        //string con = System.Configuration.ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        //cn = new SqlConnection(con);        
    }   
}