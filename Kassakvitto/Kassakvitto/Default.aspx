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
        <asp:Label ID="Label1" runat="server" Text="Total köpesumma:"></asp:Label>
    </div>
    <div>
        <asp:TextBox ID="Input" runat="server"></asp:TextBox> <asp:Label ID="Label2" runat="server" Text="Kr"></asp:Label>
    </div>
    <div>
        <asp:Button ID="Button1" runat="server" Text="Button" />
    </div>
    <div>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Fältet får ej vara tomt." ControlToValidate="Input"></asp:RequiredFieldValidator>
    </div>
    </form>
</body>
</html>
