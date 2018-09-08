<%@ Page Title="Product Detail" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="ProductDetailUser.aspx.cs" Inherits="ProductDetailUser" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
    <html>
    <head>
    
     <%--<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>--%>

	<script type="text/javascript">
	    !window.jQuery && document.write('<script src="zoom/jquery-1.4.3.min.js"><\/script>');

	</script>

	<script type="text/javascript" src="zoom/jquery.mousewheel-3.0.4.pack.js"></script>

	<script type="text/javascript" src="zoom/jquery.fancybox-1.3.4.pack.js"></script>

	<link rel="stylesheet" type="text/css" href="zoom/jquery.fancybox-1.3.4.css" media="screen" />

 	<link rel="stylesheet" href="zoom/style.css" />
        <%-- '<%#Eval("productimage","~/Admin/Image/600x620/{0}") %>'--%>
     <script type="text/javascript">
         &#8377;(document).ready(function () {
             /*

             *   Examples - images

             */

             &#8377;("a#example1").fancybox();


         });

	</script>
   <style type="text/css">
     
    .pname
    {
     
      color:#4a8cf6;
      font-weight:bold;  
    }
    .price
    {
        color:#B00;
    }
   .div
   {
       background-color:#DFDFDF;
       height:30px;
       width:100%;
       font-family:Verdana;
   }
   .detail
   {
       
       list-style-position:inside;
       list-style-type:disc;
   }
     

.btn 
{
	cursor:pointer;
	-moz-box-shadow:inset 2px 1px 0px -7px #bbdaf7;
	-webkit-box-shadow:inset 2px 1px 0px -7px #bbdaf7;
	box-shadow:inset 2px 1px 0px -7px #bbdaf7;
	background-color:#79bbff;
	-moz-border-radius:15px;
	-webkit-border-radius:15px;
	border-radius:15px;
	border:1px solid #84bbf3;
	display:inline-block;
	color:#ffffff;
	font-family:arial;
	font-size:17px;
	font-weight:bold;
	padding:6px 53px;
	text-decoration:none;
	text-shadow:0px 0px 0px #528ecc;
}.btn:hover {
	background-color:#378de5;
}.btn:active {
	position:relative;
	top:1px;
}
.label
{
	 text-decoration:none; 
	 font-size:11px;
	  font-weight:bold; 
	  color:#666666;
	   text-transform:uppercase;
	   }
   .detail
   {
   	font-family:Verdana;
   	font-size:15px;
   }
    </style>
    </head>
    <body >
       <%-- <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>--%>
        <asp:LinkButton ID="LinkButton8" runat="server" 
            PostBackUrl="~/Home.aspx" CssClass="label">Home</asp:LinkButton>
&nbsp;&gt;
        <asp:Label ID="lbl_pname" runat="server" Text="Label" CssClass="label"></asp:Label>
        &nbsp;<br />
        <table class="style1" >
            <tr>
                <td rowspan="5" valign="top">
                    <div>
        <asp:DataList ID="dlproductdetail" runat="server" Width="500px" CssClass="lbl">
            <ItemTemplate>
                <table class="style1" width="200px">
                    <tr>
                        <td style="width: 36px;">
                       <%-- '<%#Eval("productimage","~/Admin/Image/600x620/{0}") %>'--%>
                         <a id="example1" href='<%#Eval("productimage","Admin/Image/1000x1000/{0}") %>' rel="thumbnail">
                             <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("productimage","~/Admin/Image/275x275/{0}") %>' /></a>
                         <%--   <asp:Image ID="Image2" runat="server" ImageUrl='<%#Eval("productimage","~/Admin/Image/270x320/{0}") %>'/>--%>
                        </td>
                        <td class="style16" valign="top">
                       
                          <b>  &nbsp;  <asp:Label ID="Label1" runat="server" Text='<%#Eval("productname") %>'></asp:Label></b>
                            <br />
                           <%-- <b>Details:</b>--%>
                            <br />
                            &nbsp;<asp:Label ID="Label2" runat="server" Text='<%# Eval("description") %>' 
                                CssClass="detail"></asp:Label>
                            <br />
                            <br />
                            &nbsp; Product Code:
                            <asp:Label ID="Label3" runat="server" Text='<%#Eval("productid") %>' ></asp:Label>
                            <br />
                            <br />
                            &nbsp; Quantity:&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="qty" runat="server" Width="40px" Text="1" ></asp:TextBox>                           
                              <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="*"
                                     ControlToValidate="qty"  MinimumValue="1" MaximumValue="10" 
                                Type="Integer" ForeColor="Red"></asp:RangeValidator>
                            <br />
                            <br />
                            &nbsp; Price: &nbsp;&#8377;<asp:Label ID="Label5" runat="server" Text='<%#Eval("price") %>' ></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="button"  runat="server"  Text="Add To Cart" onclick="button_Click" CssClass="btn" />
                    </tr>
                    <tr>
                        <td style="width: 36px;">
                            &nbsp;</td>
                        <td class="style16" valign="top">
                            &nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
                    </div>
                </td>
                <td class="style19">
                    &nbsp;</td>
                <td class="style7" rowspan="5" valign="top">
                    <div class="div" >
                    Products you may also Buy.
                    </div>
                    <div>                    
                      <asp:DataList ID="dlcollection" runat="server" CssClass="lbl"
            CellSpacing="2">
            <ItemTemplate>
                <asp:ImageButton ID="imagebutton2" runat="server" 
                    ImageUrl='<%#Eval("productimage","~/Admin/Image/180x180/{0}") %>' 
                    PostBackUrl='<%# Eval("productid", "ProductDetailUser.aspx?productid={0}")%>' 
                    onclick="imagebutton2_Click"/>
                <br />
              <center> <asp:Label ID="lbl_pname" runat="server" Text='<%#Eval("productname") %>' CssClass="pname"></asp:Label>
               <%--<br />--%>
               <%-- item id:<asp:label id="lblpid" runat="server" text='<%#eval("productid") %>' ></asp:label>--%>
                <br />
               &#8377;<asp:Label ID="llblprice" runat="server" Text='<%#Eval("price") %>' CssClass="price"></asp:Label></center>
            </ItemTemplate>
        </asp:DataList>
                    </div>
                 
                </td>
            </tr>
            <tr>
                <td class="style19">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style19">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style19">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style19">
                    &nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
      
        <br />
   </body>
    </html>
        
</asp:Content>


