<%@ Page Title="Home" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>


<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
    <html>
    <head>
    <title></title>
     <style type="text/css">
    .pname
    {
      font-size:17px;
      color:#4a8cf6;
      font-weight:bold;  
    }
    .price
    {
        color:#B00;
    }
   
    </style>
    </head>
    <body>
        <asp:Panel ID="Panel1" runat="server" BackColor="#DBDBDB" Width="100%" Height="30px" CssClass="lbl">
            Samsung&nbsp; 
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <a href='Collection.aspx?cid=56'>View More</a>&nbsp;&nbsp;&nbsp;
        </asp:Panel>
    <asp:DataList ID="dl_cc" runat="server" RepeatColumns="4" CellSpacing="5"  >
    <ItemTemplate>
                 <asp:ImageButton ID="ImageButton2" runat="server" 
                    ImageUrl='<%#Eval("productimage","~/Admin/Image/180x180/{0}") %>'  PostBackUrl='<%# Eval("productid", "ProductDetailUser.aspx?productid={0}") %>'/>
                <br />
              <center> <asp:Label ID="lbl_pname" runat="server" Text='<%#Eval("productname") %>' CssClass="pname"></asp:Label>
               <%--<br />--%>
               <%-- Item ID:<asp:Label ID="lblpid" runat="server" Text='<%#Eval("productid") %>' ></asp:Label>--%>
                <br />
                &#8377;<asp:Label ID="Llblprice" runat="server" Text='<%#Eval("price") %>' CssClass="price"></asp:Label></center>
            </ItemTemplate>
    </asp:DataList>
        <asp:Panel ID="Panel2" runat="server" BackColor="#DBDBDB" Width="100%" 
            Height="30px" CssClass="lbl">
            Sony Ericsson&nbsp; 
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href='Collection.aspx?cid=55'>View More</a>
        </asp:Panel>
       
    <asp:DataList ID="dl_bedcover" runat="server" RepeatColumns="4" 
        CellSpacing="5" >
    <ItemTemplate>
                 <asp:ImageButton ID="ImageButton2" runat="server" 
                    ImageUrl='<%#Eval("productimage","~/Admin/Image/180x180/{0}") %>'  PostBackUrl='<%# Eval("productid", "ProductDetailUser.aspx?productid={0}") %>'  />
                <br />
               <center><asp:Label ID="lbl_pname" runat="server" Text='<%#Eval("productname") %>' CssClass="pname"></asp:Label>
               <%--<br />--%>
               <%-- Item ID:<asp:Label ID="lblpid" runat="server" Text='<%#Eval("productid") %>' ></asp:Label>--%>
                <br />
                &#8377;<asp:Label ID="Llblprice" runat="server" Text='<%#Eval("price") %>' CssClass="price"></asp:Label></center>
            </ItemTemplate>
    </asp:DataList>
        

        <asp:Panel ID="Panel3" runat="server" BackColor="#DBDBDB" Width="100%" 
            Height="30px" CssClass="lbl">
            Nokia&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href='Collection.aspx?cid=58'>View More</a>
        </asp:Panel>
       
    <asp:DataList ID="dl_hb" runat="server" RepeatColumns="4" 
        CellSpacing="5" >
    <ItemTemplate>
                 <asp:ImageButton ID="ImageButton2" runat="server" 
                    ImageUrl='<%#Eval("productimage","~/Admin/Image/180x180/{0}") %>'  PostBackUrl='<%# Eval("productid", "ProductDetailUser.aspx?productid={0}") %>'  />
                <br />
              <center> <asp:Label ID="lbl_pname" runat="server" Text='<%#Eval("productname") %>' CssClass="pname"></asp:Label>
               <%--<br />--%>
               <%-- Item ID:<asp:Label ID="lblpid" runat="server" Text='<%#Eval("productid") %>' ></asp:Label>--%>
                <br />
                &#8377;<asp:Label ID="Llblprice" runat="server" Text='<%#Eval("price") %>' CssClass="price"></asp:Label></center>
            </ItemTemplate>
    </asp:DataList>
        

        <asp:Panel ID="Panel4" runat="server" BackColor="#DBDBDB" Width="100%" 
            Height="30px" CssClass="lbl" >
            HTC&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href='Collection.aspx?cid=57'>View More</a>
        </asp:Panel>
            
    <asp:DataList ID="dl_tp" runat="server" RepeatColumns="4" 
        CellSpacing="5" >
    <ItemTemplate>
                 <asp:ImageButton ID="ImageButton2" runat="server" 
                    ImageUrl='<%#Eval("productimage","~/Admin/Image/180x180/{0}") %>'  PostBackUrl='<%# Eval("productid", "ProductDetailUser.aspx?productid={0}") %>'  />
                <br />
               <center><asp:Label ID="lbl_pname" runat="server" Text='<%#Eval("productname") %>' CssClass="pname"></asp:Label>
               <%--<br />--%>
               <%-- Item ID:<asp:Label ID="lblpid" runat="server" Text='<%#Eval("productid") %>' ></asp:Label>--%>
                <br />
                &#8377;<asp:Label ID="Llblprice" runat="server" Text='<%#Eval("price") %>' CssClass="price"></asp:Label></center>
          </ItemTemplate>
    </asp:DataList>
        </html>

    </asp:Content>



