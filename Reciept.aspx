<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Reciept.aspx.cs" Inherits="Reciept" MasterPageFile="~/MasterPage1.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
    l<html><body><table>
    
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Logo/images.jpg" 
            Width="194px" />
        
                                      
                  
                 
                          &nbsp;RECEIPT</td>
                   
                          &nbsp;</td>
                 
    </div>
   
         <div align="left">
           </div>
           <center>
        <div align="left">
            Alliance Collage of Engineering and Design<br /> 
              Alliance University<br /> 
            Bangalore.<br /> 
            8866622246</div></center>
            
                <div style="width: 800px">
    <div align="left" style="float: left; width: 333px;">
        &nbsp;Name :<asp:Label ID="lbl" runat="server" Text="Name" 
            Visible="False"></asp:Label>
        <br /> 
        <br />
        Coustomer ID :<asp:Label ID="lblempname0" runat="server" 
            Text="CustmID" Visible="False"></asp:Label>
        <br />
        <br />
        Phone :<asp:Label ID="lblempname2" runat="server" Text="Phone" 
            Visible="False"></asp:Label>
        <br />
        &nbsp;
        <br />
        Email :<asp:Label ID="lblempname1" runat="server" 
            Text="email" Visible="False"></asp:Label>
        </div>
        <tr>
                 <td style="border-style: solid; font-size: large; font-weight: bold;" 
                     colspan="2">
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             </tr>
    <br /><br /><br /><br /><br /><br /><br /><br /></div>
    <tr>
                 <td style="border-style: solid; font-size: large; font-weight: bold;" 
                     colspan="2">
                     ProductName&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                     &nbsp;<td style="border-style: solid; font-size: large; font-weight: bold;" 
                     colspan="2">Quantity&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Amount</td><p>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
    </p>
&nbsp;</tr><tr><td style="border-style: dotted; font-size: large;">TAX (10.33%)</td>
                 <td style="border-style: dotted; font-size: large; width: 130px;">
                     &nbsp;<td style="border-style: dotted; font-size: large;">&nbsp;&nbsp;
                     </td>
             </tr>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Text="Label" Visible="False"></asp:Label>
    <br />
    <br />
    <tr><td>Grand Total&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>&nbsp;<asp:Label ID="Label5" runat="server" Text="Label" 
        Visible="False"></asp:Label>
    &nbsp;&nbsp;&nbsp;
   </tr> <p>
&nbsp;
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Print" />
    </p>
   </table>
             </body>
</html>
</asp:Content>
