using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using paypalfunc;

public partial class Checkout : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {

        string con = System.Configuration.ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        cn = new SqlConnection(con);
        if (!IsPostBack)
        {
            txtbillfill();
        }
    }
    void txtbillfill()
    {
        string select = "select firstname,lastname,address,city,pincode,state,country,mobileno from Registration where username='" + Session["username"] + "'";
        cn.Open();
        SqlDataAdapter da = new SqlDataAdapter(select, cn);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            txt_fname.Text = ds.Tables[0].Rows[0]["firstname"].ToString().Trim();
            txt_lname.Text = ds.Tables[0].Rows[0]["lastname"].ToString().Trim();
            txt_add1.Text = ds.Tables[0].Rows[0]["address"].ToString().Trim();
            txt_city.Text = ds.Tables[0].Rows[0]["city"].ToString().Trim();
            txt_state.Text = ds.Tables[0].Rows[0]["state"].ToString().Trim();
            ddl_country.SelectedValue = ds.Tables[0].Rows[0]["country"].ToString().Trim();
            txt_mno.Text = ds.Tables[0].Rows[0]["mobileno"].ToString().Trim();
            txt_pin.Text = ds.Tables[0].Rows[0]["pincode"].ToString().Trim();
        }
    }
    protected void btn_cnt_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default2.aspx");

        //DataTable billdt = (DataTable)Session["Bill"];
        //if (billdt == null)
        //{

        //    billdt = new DataTable();
        //    billdt.Columns.Add("FirstName");
        //    billdt.Columns.Add("LastName");
        //    billdt.Columns.Add("Address");
        //    billdt.Columns.Add("City");
        //    billdt.Columns.Add("State");
        //    billdt.Columns.Add("Pincode");
        //    billdt.Columns.Add("Country");
        //    billdt.Columns.Add("MobileNo");

        //    billdt.Rows.Add(txt_fname.Text, txt_lname.Text, txt_add1.Text, txt_city.Text, txt_state.Text, txt_pin.Text, ddl_country.SelectedItem, txt_mno.Text);
        //    //       if (billdt.Rows.Count == 2) { billdt.Rows.RemoveAt(0); }
        //    Session["Bill"] = billdt;
        //}
        //else
        //{

        //    billdt.Rows.Add(txt_fname.Text, txt_lname.Text, txt_add1.Text, txt_city.Text, txt_state.Text, txt_pin.Text, ddl_country.SelectedItem, txt_mno.Text);
        //    if (billdt.Rows.Count == 2) { billdt.Rows.RemoveAt(0); }
        //    Session["Bill"] = billdt;
        //}
        fvfill();
        if (ckb_ship.Checked == false)
        {
            txtship_fname.Text = txt_fname.Text;
            txtship_lname.Text = txt_lname.Text;
            txtship_add1.Text = txt_add1.Text;
            txtship_city.Text = txt_city.Text;
            txtship_state.Text = txt_state.Text;
            txtship_pin.Text = txt_pin.Text;
            ddlship_country.SelectedValue = ddl_country.SelectedValue;
            txtship_mno.Text = txt_mno.Text;
        }
        ship();
        //paypal();

        // paypal();
        //  Accordion1.SelectedIndex = 1;
    }
    void fvfill()
    {
        if (Session["Bill"] != null)
        {

            frm_bill.DataSource = Session["Bill"];
            frm_bill.DataBind();
            // DataTable dt = (DataTable)Session["Bill"];            
        }
    }
    protected void ship()
    {
        DataTable shipdt = (DataTable)Session["ship"];
        if (shipdt == null)
        {
            shipdt = new DataTable();
            shipdt.Columns.Add("FirstName");
            shipdt.Columns.Add("LastName");
            shipdt.Columns.Add("Address");
            shipdt.Columns.Add("City");
            shipdt.Columns.Add("State");
            shipdt.Columns.Add("Pincode");
            shipdt.Columns.Add("Country");
            shipdt.Columns.Add("MobileNo");
            shipdt.Columns.Add("GiftMsg");
            shipdt.Rows.Add(txtship_fname.Text, txtship_lname.Text, txtship_add1.Text, txtship_city.Text, txtship_state.Text, txtship_pin.Text, ddlship_country.SelectedItem, txtship_mno.Text, txt_giftmsg.Text);
            Session["ship"] = shipdt;
        }
        else
        {
            shipdt.Rows.Add(txtship_fname.Text, txtship_lname.Text, txtship_add1.Text, txtship_city.Text, txtship_state.Text, txtship_pin.Text, ddlship_country.SelectedItem, txtship_mno.Text);
            if (shipdt.Rows.Count == 2) { shipdt.Rows.RemoveAt(0); }
            Session["ship"] = shipdt;
        }
        fvshipfill();


    }
    //protected void btn_checkout_Click(object sender, EventArgs e)
    //{
    //   // Response.Write("<script>alert('gokul')</script>");
    //    //DataTable shipdt = (DataTable)Session["ship"];
    //    //if (shipdt == null)
    //    //{
    //    //    shipdt = new DataTable();
    //    //    shipdt.Columns.Add("FirstName");
    //    //    shipdt.Columns.Add("LastName");
    //    //    shipdt.Columns.Add("Address");
    //    //    shipdt.Columns.Add("City");
    //    //    shipdt.Columns.Add("State");
    //    //    shipdt.Columns.Add("Pincode");
    //    //    shipdt.Columns.Add("Country");
    //    //    shipdt.Columns.Add("MobileNo");
    //    //    shipdt.Columns.Add("GiftMsg");
    //    //    shipdt.Rows.Add(txtship_fname.Text, txtship_lname.Text, txtship_add1.Text, txtship_city.Text, txtship_state.Text, txtship_pin.Text, ddlship_country.SelectedItem, txtship_mno.Text,txt_giftmsg.Text);
    //    //    Session["ship"] = shipdt;
    //    //}
    //    //else
    //    //{
    //    //    shipdt.Rows.Add(txtship_fname.Text, txtship_lname.Text, txtship_add1.Text, txtship_city.Text, txtship_state.Text, txtship_pin.Text, ddlship_country.SelectedItem, txtship_mno.Text);
    //    //    if (shipdt.Rows.Count == 2) { shipdt.Rows.RemoveAt(0); }
    //    //    Session["ship"] = shipdt;
    //    //}      

    // //  fvshipfill();
    ////   paypal();
    //}
    void paypal()
    {

        NVPAPICaller test = new NVPAPICaller();

        string retMsg = "";
        string token = "";

        if (Session["payment_amt"] != null)
        {
            string amt = Session["payment_amt"].ToString();

            //Optional Shipping Address entered on the merchant site
            DataTable dt = (DataTable)Session["ship"];
            //Optional Shipping Address entered on the merchant site
            string shipToName = dt.Rows[0]["FirstName"].ToString() + dt.Rows[0]["LastName"].ToString();
            string shipToStreet = dt.Rows[0]["Address"].ToString();
            string shipToStreet2 = dt.Rows[0]["Address"].ToString();
            string shipToCity = dt.Rows[0]["City"].ToString();
            string shipToState = dt.Rows[0]["State"].ToString();
            string shipToZip = dt.Rows[0]["Pincode"].ToString();
            string shipToCountryCode = "NULL";

            bool ret = test.MarkExpressCheckout(amt, shipToName, shipToStreet, shipToStreet2,
                            shipToCity, shipToState, shipToZip, shipToCountryCode,
                            ref token, ref retMsg);
            if (ret)
            {
                Session["token"] = token;
                Response.Redirect(retMsg);
            }
            else
            {
                Response.Redirect("APIError.aspx?" + retMsg);
            }
        }
        else
        {
            Response.Redirect("APIError.aspx?ErrorCode=AmtMissing");
        }

    }
    void fvshipfill()
    {
        if (Session["ship"] != null)
        {
            frm_ship.DataSource = Session["ship"];
            frm_ship.DataBind();

            // DataTable dt = (DataTable)Session["ship"];
            // dt.Rows.RemoveAt(0);
        }
        paypal();
    }


    protected void ckb_ship_CheckedChanged(object sender, EventArgs e)
    {
        if (ckb_ship.Checked == true)
        {
            Accordion1.SelectedIndex = 1;
        }
    }
}