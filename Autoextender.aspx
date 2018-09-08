<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Autoextender.aspx.cs" Inherits="Admin_Autoextender" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
            <Services>
                <asp:ServiceReference Path="AutoComplete.asmx" />
            </Services>
        </asp:ScriptManager>
        <div>
            <asp:TextBox ID="txtCountry" runat="server"></asp:TextBox>
            <asp:AutoCompleteExtender runat="server" ID="autoComplete1" TargetControlID="txtCountry" ServicePath="AutoComplete.asmx" ServiceMethod="GetCountriesList" MinimumPrefixLength="1" EnableCaching="true" />
        </div>
    </form>
</body>
</html>