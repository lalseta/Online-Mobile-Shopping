<%@ Page Title="Order Review" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="OrderReview.aspx.cs" Inherits="OrderReview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
      
        .style14
        {
            width: 184px;
        }
        
        .style20
        {
            width: 122px;
        }
        .style19
        {
            width: 108px;
        }
        .style22
        {
            font-weight: normal;
        }
        .style23
        {
            width: 182px;
        }
        
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

        .style25
        {
            width: 122px;
            color: #404040;
        }

        </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
    <table class="style1">
        <tr>
            <td colspan="4" valign="top">
            <div style="background-color: #DADADA" class="lbl">
                 Order Review</div>
            </td>
        </tr>
        <tr>
            <td class="style23">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td class="style20">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td>
                <asp:Button ID="btn_confirm" runat="server" 
                    Text="Confirm Order" onclick="btn_confirm_Click" CssClass="btn"/>
            </td>
        </tr>
        <tr>
            <td class="style23">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td class="style20">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:GridView ID="gv_orderconfirm" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="4" ForeColor="#404040" GridLines="Vertical"  >
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="Product">
                            <ItemTemplate>
                                 <table class="style1">
                                    <tr>
                                        <td class="style12">
                                           
                                        </td>
                                        <td class="style12">
                                         <center>   <asp:Image ID="Image2" runat="server" 
                                                ImageUrl='<%#Eval("productimage","~/Admin/Image/50x70/{0}") %>' /> </center>
                                        </td>
                                        <td>
                                           <b> <asp:Label ID="Label2" runat="server" Text='<%#Eval("productname") %>'></asp:Label></b>
                                            <br />
                                            Product ID: <asp:Label ID="Label3" runat="server" Text='<%#Eval("productid") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style12">
                                            &nbsp;</td>
                                        <td class="style12">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Price">
                            <ItemTemplate>
                                &#8377;.
                                <asp:Label ID="lbl_price" runat="server" Text='<%#Eval("price") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Quantity">
                            <ItemTemplate>
                                <asp:Label ID="lbl_qty" runat="server" Text='<%# Eval("quantity") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Total">
                            <ItemTemplate>
                            &#8377;.
                                <asp:Label ID="lbl_total" runat="server" Text='<%# Eval("total") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <%--<SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />--%>
                </asp:GridView>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style23">
                <span class="style22"><strong>
                <asp:Label ID="lbl_bill" runat="server" Text="Billing Information:&nbsp;" 
                     ForeColor="#404040"></asp:Label></strong></span></td>
            <td class="style14">
                
               <b> 
                <asp:Label ID="lbl_shipinf" runat="server" Text="Shipping Information:" 
                    ForeColor="#404040"></asp:Label></b>
                </td>
            <td class="style25">
                            <strong><u>Order Summary:</u></strong></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style23" rowspan="7" valign="top" >
                <asp:FormView ID="fvbill" runat="server" ForeColor="#404040">
                  <ItemTemplate>
                            <table>
                                <tr>
                                    <td>
                                       <asp:Label ID="lbl_fname" runat="server"  Text='<%#Eval("FirstName") %>'></asp:Label>
                                        <asp:Label ID="lbl_lname" runat="server" Text='<%#Eval("LastName") %>'></asp:Label>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td >
                                        <asp:Label ID="lbl_add" runat="server" Text='<%#Eval("Address") %>'></asp:Label>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="lbl_state" runat="server" Text='<%#Eval("State") %>'></asp:Label>
                                        &nbsp;,
                                        <asp:Label ID="lbl_country" runat="server" Text='<%#Eval("Country") %>'></asp:Label>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="lbl_city" runat="server" Text='<%#Eval("City") %>'></asp:Label>
                                        &nbsp;-
                                        <asp:Label ID="lbl_pin" runat="server" Text='<%#Eval("Pincode") %>'></asp:Label>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        M NO:
                                        <asp:Label ID="lbl_mno" runat="server" Text='<%#Eval("MobileNo") %>'></asp:Label>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </ItemTemplate>
                </asp:FormView>
                <br />
            </td>
            <td class="style14" rowspan="7" valign="top">
                <asp:FormView ID="fv_shipp" runat="server" ForeColor="#404040">
                  <ItemTemplate>
                            <table >
                                <tr>
                                    <td>
                                      <asp:Label ID="lbl_shipfname" runat="server"  Text='<%#Eval("FirstName") %>'></asp:Label>
                                        <asp:Label ID="lbl_shiplname" runat="server" Text='<%#Eval("LastName") %>'></asp:Label>
                                        
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td >
                                        <asp:Label ID="lblship_add" runat="server" Text='<%#Eval("Address") %>'></asp:Label>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td >
                                        <asp:Label ID="lblship_state" runat="server" Text='<%#Eval("State") %>'></asp:Label>
                                        &nbsp;,
                                        <asp:Label ID="lblship_country" runat="server" Text='<%#Eval("Country") %>'></asp:Label>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td >
                                        <asp:Label ID="lblship_city" runat="server" Text='<%#Eval("City") %>'></asp:Label>
                                        &nbsp;-
                                        <asp:Label ID="lblship_pin" runat="server" Text='<%#Eval("Pincode") %>'></asp:Label>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td >
                                        M NO:
                                        <asp:Label ID="lblship_mno" runat="server" Text='<%#Eval("MobileNo") %>'></asp:Label>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </ItemTemplate>
                </asp:FormView>
            </td>
            <td class="style25">
                            Total:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td>
                            <asp:Label ID="ototal" runat="server" Text="00.00" Font-Size="11pt" 
                                CssClass="style24" ></asp:Label>
                        </td>
        </tr>
        <tr>
            <td class="style25">
                            Ship:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td>
                            <asp:Label ID="lbl_ship" runat="server" Text="00.00" 
                    Font-Size="11pt" CssClass="style24" ></asp:Label>
                        </td>
        </tr>
        <tr>
            <td class="style25">
                            Tax:(10.33%):</td>
            <td>
                            <asp:Label ID="tax" runat="server" Text="00.00" Font-Size="11pt" 
                                CssClass="style24"></asp:Label>
                            </td>
        </tr>
        <tr>
            <td class="style25">
                            Discount:(10.00%):</td>
            <td>
                            <asp:Label ID="disc" runat="server" Text="00.00" Font-Size="11pt" 
                               CssClass="style24"></asp:Label>
                            </td>
        </tr>
        <tr>
            <td class="style25">
                            <strong >Net Amount:</strong></td>
            <td class="style19">
                            <strong>
                            <asp:Label ID="gndtotal" runat="server" Text="00.00" Font-Size="11pt" ForeColor="#404040" 
                                ></asp:Label>
                        </strong></td>
        </tr>
        <tr>
            <td class="style20">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style20">
                &nbsp;</td>
            <td>
                <asp:Button ID="btn_conf" runat="server"  
                    Text="Confirm Order" onclick="btn_confirm_Click" CssClass="btn"/>
            </td>
        </tr>
        <tr>
            <td class="style23">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td class="style20">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>


