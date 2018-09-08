using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using paypalfunc;
using System.Data;
using System.Data.SqlClient;
public partial class OrderReview : System.Web.UI.Page
{ 
    SqlConnection cn;
    SqlCommand cm;
    protected void Page_Load(object sender, EventArgs e)
    {
       
        string con = System.Configuration.ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        cn = new SqlConnection(con);
        if (!IsPostBack)
        {
            gvfill();
            billfill();
            shipfill();
            total();
            paypalorderreview();
        }
    }
    void gvfill()
    {
        DataTable dt = (DataTable)Session["cart"];
        gv_orderconfirm.DataSource = dt;
        gv_orderconfirm.DataBind();
    }
    void billfill()
    {
        DataTable dt = (DataTable)Session["Bill"];
        fvbill.DataSource = dt;
        fvbill.DataBind();
    }
    void shipfill()
    {
        DataTable dt = (DataTable)Session["ship"];
        fv_shipp.DataSource = dt;
        fv_shipp.DataBind();
    }
    void total()
    {
        //  DataTable dt = (DataTable)Session["cart"];
        Decimal t = 0;
        // DataTable dt=(DataTable)Session["cart"];
        //dt.Rows[0]["Total"] = ototal.Text;
        //dt.AcceptChanges();
        foreach (GridViewRow row in gv_orderconfirm.Rows)
        {
            Label total = (Label)row.FindControl("lbl_total");
           // Label price = (Label)row.FindControl("lbl_price");
           // Label qty = (Label)row.FindControl("lbl_qty");
            t += Convert.ToDecimal(total.Text);
            ototal.Text = t.ToString();
            Decimal tax1 = (Convert.ToDecimal(ototal.Text) * Convert.ToDecimal(10.33)) / 100;
            Decimal discount = (Convert.ToDecimal(ototal.Text) * 10) / 100;
            lbl_ship.Text = "50.00";
            tax.Text = tax1.ToString("N2");
            disc.Text = discount.ToString("N2");
            Decimal netamount = Convert.ToDecimal(ototal.Text) + tax1 + Convert.ToDecimal(lbl_ship.Text) - discount;
            // gndtotal.Text = string.Format("{00:00.00}",netamount); //For Decimal Presicion set
            gndtotal.Text = netamount.ToString("N2");
        }

    }

    protected void paypalorderreview()
    {
        NVPAPICaller test = new NVPAPICaller();

        string retMsg = "";
        string token = "";
        string payerId = "";
        string shippingAddress="";
        token = Session[ "token"].ToString();

        //bool ret = test.GetShippingDetails(token, ref payerId, ref shippingAddress, ref retMsg);
        //if (ret)
       // {
        Session["payerId"] = Request.QueryString["PayerID"];
        //    Response.Write(shippingAddress);
        //}
        //else
        //{
        //    Response.Redirect("APIError.aspx?" + retMsg);
        //}
    }

    protected void btn_confirm_Click(object sender, EventArgs e)
    {
       
        NVPAPICaller test = new NVPAPICaller();

        string retMsg = "";
        string token = "";
        string finalPaymentAmount = "";
        string payerId = "";
        NVPCodec decoder=new NVPCodec();

        token = Session["token"].ToString();
        payerId = Session["payerId"].ToString();
        finalPaymentAmount = Session["payment_amt"].ToString();

        bool ret = test.ConfirmPayment(finalPaymentAmount, token, payerId, ref decoder, ref retMsg);
        if (ret)
        {
            // Unique transaction ID of the payment.
            string transactionId = decoder["TRANSACTIONID"];
          ViewState["trans"] = transactionId;
            // Returns "instant" if the payment is instant or "echeck" if the payment is delayed.
            string paymentType = decoder["PAYMENTTYPE"];

            // The final amount charged, including any shipping and taxes from your Merchant Profile.
            string amt = decoder["AMT"];

            // PayPal fee amount charged for the transaction    
            string feeAmt = decoder["FEEAMT"];

            // Tax charged on the transaction.    
            string taxAmt = decoder["TAXAMT"];

            // PayPal Manager Transaction ID that is used by PayPal to identify this transaction in PayPal Manager reports.
            //string pnref = decoder["PNREF"];
           insertbill();
           // Response.Write(transactionId + " " + paymentType + " " +amt);
            Response.Redirect("OrderConfirmation.aspx?transid="+transactionId);
            /*caall sp*/
        }
        else
        {
            Response.Redirect("APIError.aspx?" + retMsg);
        }
      }
    protected void insertbill()
    {
        /*For Billing Information*/
        DataTable billdt = (DataTable)Session["Bill"];
        string fname = billdt.Rows[0]["FirstName"].ToString();
        string lname = billdt.Rows[0]["LastName"].ToString();
        string address = billdt.Rows[0]["Address"].ToString();
        string city = billdt.Rows[0]["City"].ToString();
        string state = billdt.Rows[0]["State"].ToString();
        string pincode = billdt.Rows[0]["Pincode"].ToString();
        string country = billdt.Rows[0]["Country"].ToString();
        string mno = billdt.Rows[0]["MobileNo"].ToString();

        /*For Shipping Information*/
        DataTable shipdt = (DataTable)Session["ship"];
        string sfname = shipdt.Rows[0]["FirstName"].ToString();
        string slname = shipdt.Rows[0]["LastName"].ToString();
        string saddress = shipdt.Rows[0]["Address"].ToString();
        string scity = shipdt.Rows[0]["City"].ToString();
        string sstate = shipdt.Rows[0]["State"].ToString();
        string spincode = shipdt.Rows[0]["Pincode"].ToString();
        string scountry = shipdt.Rows[0]["Country"].ToString();
        string smno = shipdt.Rows[0]["MobileNo"].ToString();
        string sgftmsg = shipdt.Rows[0]["GiftMsg"].ToString();

        /*For Order Table Data*/
        Decimal netamt = Convert.ToDecimal(Session["payment_amt"]);
        DateTime date = DateTime.Now;
        string status = "Confirm";
        Decimal disc = 50;
        string uname = Session["username"].ToString();
        string transactionid = ViewState["trans"].ToString();
        
        /*This Is For Data Inserting Into Billing,Shipping,Order*/
        int orderno;
        cn.Open();
        cm = new SqlCommand("insertrecord", cn);
        cm.CommandType = CommandType.StoredProcedure;
        cm.Parameters.Add("@bfname", fname);
        cm.Parameters.Add("@blname", lname);
        cm.Parameters.Add("@baddress", address);
        cm.Parameters.Add("@bcity", city);
        cm.Parameters.Add("@bstate", state);
        cm.Parameters.Add("@bpincode", pincode);
        cm.Parameters.Add("@bcountry", country);
        cm.Parameters.Add("@bmno", mno);
        cm.Parameters.Add("@sfname", sfname);
        cm.Parameters.Add("@slname", slname);
        cm.Parameters.Add("@saddress", saddress);
        cm.Parameters.Add("@scity", scity);
        cm.Parameters.Add("@sstate", sstate);
        cm.Parameters.Add("@spincode", spincode);
        cm.Parameters.Add("@scountry", scountry);
        cm.Parameters.Add("@smno", smno);
        cm.Parameters.Add("@sgftmsg", sgftmsg);
        cm.Parameters.Add("@uname", uname);
        cm.Parameters.Add("@otransid",transactionid);
        cm.Parameters.Add("@ontamt", netamt);
        cm.Parameters.Add("@odisc", disc);
        cm.Parameters.Add("@odate",date);
        cm.Parameters.Add("@ostatus", status);
        orderno = Convert.ToInt16(cm.ExecuteScalar());
        /*
         ExecuteScalar() - When Ever Storedprocedure / sql query return One Row Then This IS Used.
         ExecuteReader() - When Ever Storedprocedure / sql query return Multiple Record Then This IS Used.
         ExecuteNonQuery() - When Ever Storedprocedure / sql query return No Row Then This IS Used.
         */
        cn.Close();
        int i;
        /*Cart Session*/
        DataTable shpcart = (DataTable)Session["cart"];
        cn.Open();
        for (i = 0; i < shpcart.Rows.Count; i++)
        {
            string pid = shpcart.Rows[i]["productid"].ToString();
            Decimal price = Convert.ToDecimal(shpcart.Rows[i]["price"]);
            Decimal total = Convert.ToDecimal(shpcart.Rows[i]["total"]);
            int qty = Convert.ToInt16(shpcart.Rows[i]["quantity"]);
            cm = new SqlCommand("insertrecordinorderdetail", cn);
            cm.CommandType = CommandType.StoredProcedure;
            cm.Parameters.Add("@orderno",orderno);
            cm.Parameters.Add("@pid", pid);
            cm.Parameters.Add("@price", price);
            cm.Parameters.Add("@qty", qty);
            cm.Parameters.Add("@total", total);
            cm.ExecuteNonQuery();
            Session.Remove("cart");
        }
        cn.Close();
    }

}