<%@ Page Title="Collection" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="Collection.aspx.cs" Inherits="Collection" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">   
    <html>
    <head>
    <title>
    </title>
    <style type="text/css">
    .pname
    {
    	
      font-size:16px;
      color:#4a8cf6;
      font-weight:bold;
    }
    .price
    {
        color:#B00;
    }
   .linkbtn
   {
   	text-decoration:none; 
   	font-size:11px;
   	 font-weight:bold;
   	  color:#666666;
   	   text-transform:uppercase;
   }
    </style>
    </head>
    <body>
   
       <asp:Panel ID="Panel1" runat="server" BackColor="#DFDFDF" 
        Height="30px" CssClass="lbl">
        <asp:Label ID="lblcname" runat="server" Text="Label"></asp:Label>
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
           &nbsp; Sort By:<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
               onselectedindexchanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem>date</asp:ListItem>
            <asp:ListItem>productname</asp:ListItem>
        </asp:DropDownList>
    </asp:Panel>
      
        <asp:DataList ID="dlcollection" runat="server" RepeatColumns="4"
            CellSpacing="2" CssClass="lbl">
            <ItemTemplate>
                <asp:ImageButton ID="ImageButton2" runat="server" 
                    ImageUrl='<%#Eval("productimage","~/Admin/Image/180x180/{0}") %>' PostBackUrl='<%# Eval("productid", "ProductDetailUser.aspx?productid={0}")%>'/>
                <br />
               <center><asp:Label ID="lbl_pname" runat="server" Text='<%#Eval("productname") %>' CssClass="pname"></asp:Label>
               <%--<br />--%>
               <%-- Item ID:<asp:Label ID="lblpid" runat="server" Text='<%#Eval("productid") %>' ></asp:Label>--%>
                <br />
               &#8377;<asp:Label ID="Llblprice" runat="server" Text='<%#Eval("price") %>' CssClass="price"></asp:Label></center>
            </ItemTemplate>
        </asp:DataList>
            <br />
        <asp:Label ID="lbl_Nodata" runat="server" ForeColor="Red" Text="No Data Found ?" 
            Visible="False" CssClass="linkbtn"></asp:Label>
            <br />
        <br />
        <br />
        <br />
        <br />
        <br />
            </body>
    </html>
</asp:Content>


<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder3">
    &nbsp;<asp:LinkButton ID="LinkButton8" runat="server" 
        onclick="LinkButton8_Click" CssClass="linkbtn" >Home</asp:LinkButton>
        &gt;
        <asp:Label ID="lbl_name" runat="server" Text="Label" CssClass="linkbtn"></asp:Label>     
</asp:Content>



