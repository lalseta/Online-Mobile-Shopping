<%@ Page Title="My Order" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="MyOrder.aspx.cs" Inherits="MyOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .style12
        {
        }
        .style13
        {
            width: 194px;
        }
        .style15
        {
            width: 243px;
        }
         .table
       {
          font-weight:bold;
           color:#626262; 
            font-weight:bold; 
            font-size:10px;
             text-transform:uppercase;
	   font-size:10pt;
           
           }
        .style19
        {
            width: 108px;
        }
        .table
       {
          font-weight:bold;
           color:#626262; 
            font-weight:bold; 
            font-size:10px;
             text-transform:uppercase;
	   font-size:9pt;
           
           }
        .style22
        {
            font-weight: normal;
        }
        .style23
        {
            font-size: small;
        }
        .style25
        {
            width: 108px;
            font-size: small;
        }
        .style26
        {
            font-size: x-small;
            color:#404040;
       }
       
    </style>
    </asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder4">
    <table class="style1">
        <tr valign="top">
            <td>
                <div style="background-color: #DADADA">
                My Account
                </div>
            </td>
        </tr>
        <tr>
        <td>
        <div class="nav-container">
                <ul class="nav">
                        <li class="li">
                            <a href="MyProfile.aspx">My Profile</a>
                        </li>
                         <li class="li">
                            <a href="MyOrder.aspx">My Orders</a>
                        </li>
                         <li class="li">
                            <a href="MyAddress.aspx">Address</a>
                        </li>
                         <li class="li">
                            <a href="ChangePwd.aspx">Change Password</a>
                        </li>
                </ul>
        </div>
        </td>
        </tr>
    </table>
</asp:Content>


<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
      
    <table class="table">
        <tr valign="top">
            <td colspan="6" valign="top">
                <div style="background-color: #DADADA;">
                 My Order&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/Logo/print.jpg" 
                        ToolTip="Print" OnClientClick="javascript:window.print(document);"/>
                </div></td>
        </tr>
        <tr>
            <td class="style15">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="4">
                <asp:GridView ID="gv_order" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="4" DataKeyNames="orderno,shippingid,billingid" 
                    onselectedindexchanging="gv_order_SelectedIndexChanging" Width="700px" 
                    ForeColor="Black" GridLines="Vertical" CssClass="lbl" 
                    EnableModelValidation="True">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="orderno" HeaderText="Order No" />
                        <asp:BoundField DataField="Name" HeaderText="Ship To" />
                        <asp:BoundField DataField="status" HeaderText="Status" />
                        <asp:BoundField DataField="date" HeaderText="Date" />
                        <asp:TemplateField HeaderText="Net Amount">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("netamount") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                &#8377;<asp:Label ID="Label1" runat="server" Text='<%# Bind("netamount") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:ImageButton ID="ImageButton2" runat="server" CommandName="Select" 
                                    Height="35px" ImageUrl="~/Logo/view1.jpg" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                    <SelectedRowStyle BackColor="#404040" Font-Bold="True" ForeColor="White" />
                   <%-- <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />--%>
                </asp:GridView>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style15">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style12" colspan="3">
                <asp:GridView ID="gv_product" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" 
                    BorderWidth="1px" Width="700px" CellPadding="4" ForeColor="Black" 
                    GridLines="Vertical" CssClass="lbl" EnableModelValidation="True" >
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="categoryname" HeaderText="Category" >
                        <ItemStyle Font-Overline="False" HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="Product">
                            <ItemTemplate>
                             <center>   <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("productimage","~/Admin/Image/50x70/{0}") %>'/></center>
                                <br />
                            </ItemTemplate>
                        </asp:TemplateField>
                      <asp:BoundField DataField="productname" HeaderText="Product Name"  >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="Price">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("price") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                &#8377;<asp:Label ID="Label1" runat="server" Text='<%# Bind("price") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:BoundField DataField="quantity" HeaderText="Quantity" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="Total">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("total") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                &#8377;<asp:Label ID="Label2" runat="server" Text='<%# Bind("total") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                   <%-- <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />--%>
                </asp:GridView>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
      
        <tr>
            <td class="style15">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td rowspan="7" valign="top">
            <asp:Panel ID="panel1" runat="server" Visible="False">
                &nbsp;
                <table class="style1">
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style19">
                            <strong style="color:Black;">Order Details:</strong></td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style25">
                           <span style="color:#404040;">Total:</span>
                                                        </td>
                        <td>
                            <asp:Image ID="Image6" runat="server" ImageUrl="~/Logo/dollar.jpg" 
                                CssClass="style23" />
                            
                            <asp:Label ID="lbl_total" runat="server" Text="Label" CssClass="style26" 
                                Font-Size="11pt"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td style="color:#404040;">
                            Ship: 
                             </td>
                        <td>
                            <asp:Image ID="Image7" runat="server" ImageUrl="~/Logo/dollar.jpg" 
                                CssClass="style23" />
                            <span style="color:#404040; font-size:11pt;" class="style23" >50</span></td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style25">
                            <span style="color:#404040;">Tax(10.33%): </span>
                             </td>
                        <td>
                            <asp:Image ID="Image8" runat="server" ImageUrl="~/Logo/dollar.jpg" 
                                CssClass="style23" />
                           
                            <asp:Label ID="lbl_tax" runat="server" Text="Label" CssClass="style26" 
                                Font-Size="11pt"></asp:Label>
                            <span class="style23">&nbsp;&nbsp;</span></td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style25">
                            <span style="color:#404040;">Disc(10.00%): </span>
                             </td>
                        <td>
                            <asp:Image ID="Image9" runat="server" ImageUrl="~/Logo/dollar.jpg" 
                                CssClass="style23" />
                           
                            <asp:Label ID="lbl_disc" runat="server" Text="Label" CssClass="style26" 
                                Font-Size="11pt"></asp:Label>
                            <span class="style23">&nbsp;&nbsp;</span></td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style25">
                            <span style="color:#404040;">Net Amount: </span>
                             </td>
                        <td>
                            <asp:Image ID="Image10" runat="server" ImageUrl="~/Logo/dollar.jpg" 
                                CssClass="style23" />
                           
                            <asp:Label ID="lbl_na" runat="server" Text="Label" CssClass="style26" 
                                Font-Size="11pt"></asp:Label>
                            
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
                </asp:Panel>
           </td>
        </tr>
        <tr>
            <td class="style15">
                <span class="style22"><strong>
                <asp:Label ID="lbl_bill" runat="server" Text="Billing Information:&nbsp;" 
                    Visible="False" ForeColor="Black"></asp:Label>&nbsp;&nbsp;</strong></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:FormView ID="fvbill" runat="server"  ForeColor="#404040">
                  <ItemTemplate>
                            <table>
                                <tr>
                                    <td>
                                       <asp:Label ID="lbl_fname" runat="server"  Text='<%#Eval("Name") %>'></asp:Label>
                                       
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td >
                                        <asp:Label ID="lbl_add" runat="server" Text='<%#Eval("address") %>'></asp:Label>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="lbl_state" runat="server" Text='<%#Eval("state") %>'></asp:Label>
                                        &nbsp;,
                                        <asp:Label ID="lbl_country" runat="server" Text='<%#Eval("country") %>'></asp:Label>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="lbl_city" runat="server" Text='<%#Eval("city") %>'></asp:Label>
                                        &nbsp;-
                                        <asp:Label ID="lbl_pin" runat="server" Text='<%#Eval("pincode") %>'></asp:Label>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        M NO:
                                        <asp:Label ID="lbl_mno" runat="server" Text='<%#Eval("mobileNo") %>'></asp:Label>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </ItemTemplate>
                </asp:FormView>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td class="style13" valign="top">
                
               <b> 
                <asp:Label ID="lbl_ship" runat="server" Text="Shipping Information:" 
                    Visible="False" ForeColor="Black"></asp:Label></b>
                <asp:FormView ID="fv_shipp" runat="server" ForeColor="#404040" >
                  <ItemTemplate>
                            <table class="style23">
                                <tr>
                                    <td>
                                      <asp:Label ID="lblship_fname" runat="server"  Text='<%#Eval("Name") %>'></asp:Label>
                                        
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td >
                                        <asp:Label ID="lblship_add" runat="server" Text='<%#Eval("address") %>'></asp:Label>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style28">
                                        <asp:Label ID="lblship_state" runat="server" Text='<%#Eval("state") %>'></asp:Label>
                                        &nbsp;,
                                        <asp:Label ID="lblship_country" runat="server" Text='<%#Eval("country") %>'></asp:Label>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style28">
                                        <asp:Label ID="lblship_city" runat="server" Text='<%#Eval("city") %>'></asp:Label>
                                        &nbsp;-
                                        <asp:Label ID="lblship_pin" runat="server" Text='<%#Eval("pincode") %>'></asp:Label>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style28">
                                        M NO:
                                        <asp:Label ID="lblship_mno" runat="server" Text='<%#Eval("mobileNo") %>'></asp:Label>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </ItemTemplate>
                </asp:FormView>
                </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>  
        <tr>
            <td class="style15">
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </td>
            <td class="style13" valign="top">
                
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>  
    </table>
 
</asp:Content>



