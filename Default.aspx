<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" MasterPageFile="~/MasterPage1.master"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>


<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
<html xmlns="http://www.w3.org/1999/xhtml">

<body>
   <table>
    <tr>
    <td>
    <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="*" ControlToValidate="TextBox1" Enabled="False"></asp:RequiredFieldValidator>

   </td>
   </tr>
   <tr>
   <td>
       <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="223px"></asp:TextBox>
          </td>
   </tr>
    <tr>
    <td><asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>  
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"  ControlToValidate="TextBox2" ErrorMessage="*" Display="Static"></asp:RequiredFieldValidator>
    </td>
    </tr>
    <tr> 
    <td><asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="223px" 
            TextMode="Email"></asp:TextBox>
        </td>
   </tr>
     <tr>
    <td><asp:Label ID="Label4" runat="server" Text="ContactNumber"></asp:Label>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*"  ControlToValidate="TextBox3" Display="Static"></asp:RequiredFieldValidator>
    </td>
    </tr>
    <tr>
    <td>
    <asp:TextBox ID="TextBox3" runat="server" style="margin-left: 0px" 
             Height="25px" Width="223px" MaxLength="10" TextMode="Number"></asp:TextBox>
        </td> 
       </tr>
    
    <tr>
    <td> <asp:Label ID="Label3" runat="server" Text="Messsage"></asp:Label> 
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"  Display="Static" ErrorMessage="*"  ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
    
    </td>
   </tr>
    <tr>
    <td>
        <asp:TextBox ID="TextBox4" runat="server" style="margin-left: 0px" 
            Height="98px" Width="231px" TextMode="MultiLine"></asp:TextBox>
         
  
    </td>
    </tr>
   <tr>
   <td>
   </td>
   </tr>
   <tr>
   <td>
    <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn" />
    </td>
    <td>
    * Require Field
  </td> 
</tr>

    </table>
</body>
</html>

</asp:Content>