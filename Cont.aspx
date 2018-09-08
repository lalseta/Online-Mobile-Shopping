<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cont.aspx.cs" Inherits="Cont" MasterPageFile="~/MasterPage1.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>


<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">


    <table>
    <tr>
    <td>
    <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>

   </td>
   </tr>
   <tr>
   <td>
       <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="223px"></asp:TextBox>
          </td>
   </tr>
    <tr>
    <td><asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>  
    </td>
    </tr>
    <tr> 
    <td><asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="223px" 
            TextMode="Email"></asp:TextBox>
        </td>
   </tr>
     <tr>
    <td><asp:Label ID="Label4" runat="server" Text="ContactNumber"></asp:Label>
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
  
  
        </asp:Content>
