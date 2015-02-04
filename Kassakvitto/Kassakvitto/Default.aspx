<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Kassakvitto.Default" ViewStateMode="Disabled" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Declaration" runat="server" Text="Total köpesumma:"></asp:Label>
    </div>
    <div>
        <asp:TextBox ID="Input" runat="server" defaultbutton="Button1"></asp:TextBox> <asp:Label ID="Currency" runat="server" Text="Kr" ></asp:Label>
    </div>
    <div>
        <asp:Button ID="Button1" runat="server" Text="Beräkna rabatt" />
    </div>
    <div>
        <asp:Label ID="Receipt" runat="server" Text="Label"></asp:Label>
    </div>
    <div>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Fältet får ej vara tomt." ControlToValidate="Input" Display="None"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="CompareValidator" Type="Double" ControlToCompare="Input" ControlToValidate="Input" Display="None" Operator="GreaterThan" ValueToCompare="0" ViewStateMode="Disabled"></asp:CompareValidator>
    </div>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowModelStateErrors="False" />
    </form>
</body>
</html>
