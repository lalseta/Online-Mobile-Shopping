using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class shoppingcart : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {

        string con = System.Configuration.ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        cn = new SqlConnection(con);
        if (!IsPostBack)
        {
            gvfill();
            total();
            // grandtotal();
        }
    }
    void gvfill()
    {
        if (Session["cart"] != null)
        {
            gv_shoppingcart.DataSource = Session["cart"];
            gv_shoppingcart.DataBind();

        }
        else
        {
            Noitem.Visible = true;
        }
    }
    void total()
    {
        //  DataTable dt = (DataTable)Session["cart"];
        Decimal t = 0;
        // DataTable dt=(DataTable)Session["cart"];
        //dt.Rows[0]["Total"] = ototal.Text;
        //dt.AcceptChanges();
        foreach (GridViewRow row in gv_shoppingcart.Rows)
        {
            Label total = (Label)row.FindControl("total");
            t += Convert.ToDecimal(total.Text);
            ototal.Text = t.ToString();
            Decimal tax1 = (Convert.ToDecimal(ototal.Text) * Convert.ToDecimal(10.33)) / 100;
            Decimal discount = (Convert.ToDecimal(ototal.Text) * 10) / 100;
            ship.Text = "50.00";
            tax.Text = tax1.ToString("N2");
            disc.Text = discount.ToString("N2");
            Decimal netamount = Convert.ToDecimal(ototal.Text) + tax1 + Convert.ToDecimal(ship.Text) - discount;
            // gndtotal.Text = string.Format("{00:00.00}",netamount); //For Decimal Presicion set
            gndtotal.Text = netamount.ToString("N2");
            Session["ntamt"] = "&#8377;" + gndtotal.Text;

        }

    }
    //void grandtotal()
    //{


    //    Decimal gt = Convert.ToDecimal(ototal.Text) + Convert.ToDecimal(ship.Text) + Convert.ToDecimal(disc.Text) + Convert.ToDecimal(tax.Text);
    //    gndtotal.Text = gt.ToString();

    //}
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

        DataTable dt = (DataTable)Session["cart"];
        string id = gv_shoppingcart.DataKeys[e.RowIndex].Value.ToString();
        DataRow dr = dt.Rows[e.RowIndex];
        dt.Rows.Remove(dr);
        dt.AcceptChanges();
        gvfill();
        if (dt.Rows.Count == 0)
        {
            Session["ntamt"] = "";
        }
        total();
        // grandtotal();
        // Response.Redirect("shoppingcart.aspx");
        if (gv_shoppingcart.Rows.Count == 0)
        {
            Noitem.Visible = true;
        }
        Response.Redirect("shoppingcart.aspx");

    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        DataTable dt = (DataTable)Session["cart"];
        TextBox qty = (TextBox)gv_shoppingcart.Rows[e.RowIndex].FindControl("txt_qty");
        int quantity = Convert.ToInt16(qty.Text);
        Label price = (Label)gv_shoppingcart.Rows[e.RowIndex].FindControl("price");
        Decimal Price = Convert.ToDecimal(price.Text);
        //var total = Convert.ToDecimal(price.Text * Convert.ToDecimal(qty.Text));
        Decimal tot = Convert.ToDecimal(Price * quantity);
        Label total1 = (Label)gv_shoppingcart.Rows[e.RowIndex].FindControl("total");
        total1.Text = Convert.ToString(tot);
        dt.Rows[e.RowIndex]["quantity"] = quantity;
        dt.Rows[e.RowIndex]["total"] = tot;
        dt.AcceptChanges();

        Session["cart"] = dt;
        total();
        Response.Redirect("shoppingcart.aspx");
        // grandtotal();
    }
    protected void btn_cnt_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
    protected void btn_checkout_Click(object sender, EventArgs e)
    {
        Session["payment_amt"] = Convert.ToDecimal(gndtotal.Text);
        if (Session["username"] != null)
        {
            //  Session["payment_amt"] = Convert.ToDecimal(gndtotal.Text);
            Response.Redirect("Checkout.aspx");
        }
        else
        {
            Response.Redirect("login1.aspx?url=" + "Checkout.aspx");
        }
    }

}