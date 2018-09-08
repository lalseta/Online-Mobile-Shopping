<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Help.aspx.cs" Inherits="Help"  MasterPageFile="~/MasterPage1.master"%>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
    <asp:Label ID="l1" runat="server"><span style="font-size: 32pt">W</span>elcome to TechShop.</asp:Label><br />
    <br />
    <br />
    
    <asp:Panel ID="p1" runat="server">
    
   
    <a id="#Register">
    <asp:Literal ID="Literal1" runat="server"><b> How to Register?</b>
    
    <br /><br />
    
Before you start shopping, you need to register yourself with us and give us information that will allow us 
to communicate with you regarding your transactions. Registration is very easy with Nishant electronics. Three of our 
sections i.e. Shopping Cart, Shopping List and My Account are password protected. When you click on any of
 these links you will reach a sign in page. A new user can register here or members can login to their 
 account directly.</asp:Literal></a>
    <br />
    <br />
    
    <a id="#Order">
    <asp:Literal ID="Literal2" runat="server"><b>How to place an order?</b>
     <br /><br />
     Placing an order with Nishant electronics is quick and simple. As you browse through the .com, 
     you can put the items that you want to purchase instantly in your Shopping Cart by clicking on 
     the link 'Add To Shopping Cart'. Link to Shopping Cart is provided with every item that is 
     displayed on the screen. If you haven't logged in yet, you will reach the login page. 
     Click here for a help.
     </asp:Literal></a>
    <br />
    <br />
    
    <a id="Persional">
    <asp:Literal ID="Literal3" runat="server"><b>About persional details.</b>
     <br /><br />
     You can modify the personal Details (e-mail address, phone numbers, password), 
     shipping information, billing details;. Just log into your account and click on Modify User 
     Information in My Account. The password must have at least 8 characters and a maximum of 20. 
     It is also case-sensitive. 

    Forgot Password-If you have forgotten your password, then click on Shopping Cart or S
    hopping List or My Account and you will reach the Login page where there is a link to ?
    Forgot Your Password? ? You must remember your User Name and on entering that, you will 
    be taken to your hint question. On answering the Hint Question in exactly the same words 
    as you had entered during the Registration process ,you would be shown your password.
    </asp:Literal></a>
    <br />
    <br />
    
    <a id="#Payment">
    <asp:Literal ID="Literal4" runat="server"><b>Payment option.</b>
     <br /><br />
    Only Creditcard of listed bank like icici bank,hdfc bank,idbi bank,city bank are available in our payment option. 
    User want to shopping only after some required procsss is completed user received its good.
 <br /><br />
 
 
                       I-402 ICB Park  <br />
                       Banglore-5621106<br />
                       Jenith Lalseta<br />
                       Raj Shah</asp:Literal></a>
                       </asp:Panel>
</asp:Content>


