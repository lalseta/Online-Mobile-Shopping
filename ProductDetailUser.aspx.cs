using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class ProductDetailUser : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {

        string con = System.Configuration.ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        cn = new SqlConnection(con);
        if (IsPostBack == false)
        {
            dlproductdetailfill();
            dlcollectionfill();
        }
    }

    void dlproductdetailfill()
    {
        string pid = Request.QueryString["productid"].ToString();
        cn.Open();
        string select = "select categoryid,productid,productname,productimage,price,description from Product where productid='" + pid + "'";
        SqlDataAdapter da = new SqlDataAdapter(select, cn);
        DataSet ds = new DataSet();
        da.Fill(ds);
        ViewState["dt"] = ds.Tables[0];
        int cid = Convert.ToInt16(ds.Tables[0].Rows[0]["categoryid"]);
        ViewState["cid"] = cid;
        lbl_pname.Text = ds.Tables[0].Rows[0]["productname"].ToString().Trim();
        dlproductdetail.DataSource = ds.Tables[0];
        dlproductdetail.DataBind();
        cn.Close();
    }
    void dlcollectionfill()
    {
        cn.Open();
        int cid = Convert.ToInt16(ViewState["cid"]);
        string select = "select top 3 categoryid,productid,productname,productimage,price from Product where categoryid='" + Session["cid"] + "' or categoryid='" + cid + "'";
        SqlDataAdapter da = new SqlDataAdapter(select, cn);
        DataSet ds = new DataSet();
        da.Fill(ds);
        Session.Remove("cid");
        dlcollection.DataSource = ds.Tables[0];
        dlcollection.DataBind();
        cn.Close();
    }
    protected void imagebutton2_Click(object sender, ImageClickEventArgs e)
    {
        dlproductdetailfill();
    }
    protected void button_Click(object sender, EventArgs e)
    {
        string productid = Request.QueryString["productid"].ToString();
        DataTable dt1 = (DataTable)ViewState["dt"];
        string productname = dt1.Rows[0]["productname"].ToString();
        string productimage = dt1.Rows[0]["productimage"].ToString();
        Decimal price = Convert.ToDecimal(dt1.Rows[0]["price"]);

        DataTable dt = (DataTable)Session["cart"];
        // dt = null;     
        TextBox quantity = (TextBox)dlproductdetail.Items[0].FindControl("qty");
        int qty = Convert.ToInt16(quantity.Text);
        Decimal total = price * qty;

        if (dt == null)
        {

            dt = new DataTable();
            dt.Columns.Add("productimage");
            dt.Columns.Add("productid");
            dt.Columns.Add("productname");
            dt.Columns.Add("price");
            dt.Columns.Add("quantity");
            dt.Columns.Add("total");
            dt.Rows.Add(productimage, productid, productname, price, qty, total);
            Session["cart"] = dt;
        }
        else
        {
            int flag = 0;
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                if (dt.Rows[i]["productid"].ToString() == productid)
                {
                    flag = 1; break;
                }
            }
            if (flag == 1)
            {

                DataRow[] dr;
                dr = dt.Select("productid='" + productid + "'");
                qty += Convert.ToInt16(dr[0]["quantity"]);
                total = price * qty;
                dr[0]["quantity"] = qty;
                dr[0]["total"] = total;
                dt.AcceptChanges();
                Session["cart"] = dt;
            }
            else
            {
                dt.Rows.Add(productimage, productid, productname, price, qty, total);
                Session["cart"] = dt;
            }


        }
      
        Response.Redirect("shoppingcart.aspx");
     }
}