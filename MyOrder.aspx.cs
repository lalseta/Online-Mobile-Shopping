using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.HtmlControls;
public partial class MyOrder : System.Web.UI.Page
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
        }
    }
    void gvfill()
    {
        cn.Open();
        string select = "SELECT  r.username,r.userid,o.netamount,convert(varchar,o.date,103)as date,o.orderno,o.status,s.shippingid,b.billingid,(s.firstname+' ' +s.lastname)Name FROM [Order] AS o   INNER JOIN Registration AS r ON o.userid = r.userid INNER JOIN Shipping AS s ON o.shippingid=s.shippingid INNER JOIN Billing As b On o.billingid=b.billingid where r.username='"+Session["username"]+"' order by o.date desc";
        SqlDataAdapter da = new SqlDataAdapter(select, cn);
        DataSet ds = new DataSet();
        da.Fill(ds);
        gv_order.DataSource = ds.Tables[0];
        gv_order.DataBind();
        cn.Close();
    }
    protected void gv_order_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        cn.Open();
         int id = Convert.ToInt16(gv_order.DataKeys[e.NewSelectedIndex].Values["orderno"]);
         int sid = Convert.ToInt16(gv_order.DataKeys[e.NewSelectedIndex].Values["shippingid"]);
         int bid = Convert.ToInt16(gv_order.DataKeys[e.NewSelectedIndex].Values["billingid"]);
      //  int id = Convert.ToInt16(gv_product.DataKeys[e.NewSelectedIndex].Value);
        string select = "SELECT c.categoryname, P.productname, P.productimage, od.quantity, od.price,od.total,od.orderno,o.netamount, o.date FROM [Order] AS o INNER JOIN OrderDetail AS od ON o.orderno = od.orderno INNER JOIN Product AS P ON P.productid = od.productid INNER JOIN Category AS c ON c.categoryid = P.categoryid  WHERE od.orderno = '" + id + "'";
        SqlDataAdapter da = new SqlDataAdapter(select, cn);
        DataSet ds = new DataSet();
        da.Fill(ds);
        lbl_total.Text = ds.Tables[0].Rows[0]["total"].ToString();
        Decimal tax = (Convert.ToDecimal(lbl_total.Text) * Convert.ToDecimal(10.33)) /100;
        Decimal disc = (Convert.ToDecimal(lbl_total.Text) * Convert.ToDecimal(10.00)) / 100;
        lbl_tax.Text = tax.ToString("N2");
        lbl_disc.Text = disc.ToString("N2");
        lbl_na.Text=ds.Tables[0].Rows[0]["netamount"].ToString();
        panel1.Visible = true;
        for (int i = 0; i <= ds.Tables[0].Rows.Count; i++)
        {
            gv_product.DataSource = ds.Tables[0];
            gv_product.DataBind();
        }
        cn.Close();
        billfill(bid);
        ship(sid);
    }
    void billfill(int bid)
    {
        cn.Open();
        lbl_bill.Visible = true;
        string select = "select (firstname +' ' + lastname)Name,address,city,pincode,state,country,mobileno from Billing where billingid='" + bid + "'";
        //string select1 = "select (address+' '+city+' '+state)as address from Billing where billingid='" + id + "'";
        SqlDataAdapter da = new SqlDataAdapter(select, cn);
        DataSet ds = new DataSet();
        da.Fill(ds);
        fvbill.DataSource = ds.Tables[0];
        fvbill.DataBind();
        cn.Close();
    }
    void ship(int sid)
    {
        cn.Open();
        lbl_ship.Visible = true;
        string select1 = "select (firstname +' ' + lastname)Name,address,city,pincode,state,country,mobileno from shipping where shippingid='" + sid + "'";
        SqlDataAdapter da1 = new SqlDataAdapter(select1, cn);
        DataSet ds1 = new DataSet();
        da1.Fill(ds1);
        fv_shipp.DataSource = ds1.Tables[0];
        fv_shipp.DataBind();
        cn.Close();
    }
  
}