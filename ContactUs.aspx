<%@ Page Title="Home" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
<style type="text/css">
    .btn 
{
	cursor:pointer;
	-moz-box-shadow:inset 2px 1px 0px -7px #bbdaf7;
	-webkit-box-shadow:inset 2px 1px 0px -7px #bbdaf7;
	box-shadow:inset 2px 1px 0px -7px #bbdaf7;
	background-color:#79bbff;
	-moz-border-radius:10px;
	-webkit-border-radius:10px;
	border-radius:10px;
	border:1px solid #84bbf3;
	display:inline-block;
	color:#ffffff;
	font-family:Arial;
	font-size:17px;
	font-weight:bold;
	padding:3px 18px;
	text-decoration:none;
	text-shadow:0px 0px 0px #528ecc;
}.btn:hover {
	background-color:#378de5;
}.btn:active {
	position:relative;
	top:1px;
}
.accordionfont
{
	font-family:Verdana;
	font-weight:lighter;
	font-size:15px;
	
}
</style>
    <html>
    <table>
    <td>
    <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="*" ControlToValidate="TextBox1" Enabled="False"></asp:RequiredFieldValidator>

   </td>
   <tr>
   <td>
       <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="223px"></asp:TextBox>
          </td>
   </tr>
    <tr>
    <td><asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>  
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"  ControlToValidate="TextBox2" ErrorMessage="*" Display="Static"></asp:RequiredFieldValidator>
    </td>
    <tr> 
    <td><asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="223px" 
            TextMode="Email"></asp:TextBox>
        </td>
   </tr>
    </tr>
    <tr>
    <td><asp:Label ID="Label4" runat="server" Text="ContactNumber"></asp:Label>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*"  ControlToValidate="TextBox3" Display="Static"></asp:RequiredFieldValidator>
    </td>
    <tr>
    <td>
    <asp:TextBox ID="TextBox3" runat="server" style="margin-left: 0px" 
             Height="25px" Width="223px" MaxLength="10" TextMode="Number"></asp:TextBox>
        </td> 
    
  
    </tr>
    </tr>
    <tr>
    <td> <asp:Label ID="Label3" runat="server" Text="Messsage"></asp:Label> 
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"  Display="Static" ErrorMessage="*"  ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
    
    </td>
   
    <tr>
    <td>
        <asp:TextBox ID="TextBox4" runat="server" style="margin-left: 0px" 
            Height="98px" Width="231px" TextMode="MultiLine"></asp:TextBox>
         
  
    </td></tr>
   <tr>
   <td></td></tr>
   <tr>
   <td>
    <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn" />
    </td>
    <td>
    * Require Field
  </td> 
</tr>
</tr>
    </table>
        </asp:Content>
