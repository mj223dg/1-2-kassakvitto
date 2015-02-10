<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Kassakvitto.Default" ViewStateMode="Disabled" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Declaration" runat="server" Text="Total köpesumma:"></asp:Label>
    </div>
    <div>
        <asp:TextBox ID="Input" runat="server" defaultbutton="Button1"></asp:TextBox> <asp:Label ID="Currency" runat="server" Text="Kr" ></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator" runat="server" 
            ErrorMessage="Fältet får ej vara tomt." 
            ControlToValidate="Input" Display="None">
        </asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator" runat="server" 
            ErrorMessage="Endast siffror" Type="Double" 
            ControlToValidate="Input" 
            Display="None" 
            Operator="GreaterThan" 
            ValueToCompare="0" 
            ViewStateMode="Disabled">
        </asp:CompareValidator>
    </div>
    <div>
        <asp:Button ID="Button1" runat="server" Text="Beräkna rabatt" OnClick="Button1_Click" />
    </div>
    
        <asp:PlaceHolder ID="PlaceHolder" runat="server" Visible="false">
            <div id="Results">
            <p>
                <asp:Literal ID="LiteralTotal" runat="server">Total: {0:c}</asp:Literal>
            </p>
            <p>
                <asp:Literal ID="LiteralDiscountRate" runat="server">Rabattsats: {0:p0}</asp:Literal>
            </p>
            <p>
             <asp:Literal ID="LiteralMoneyOff" runat="server">Rabatt: {0:c}</asp:Literal>
            </p>
            <p>
                <asp:Literal ID="LiteralSubtotal" runat="server">Att betala: {0:c}</asp:Literal>
            </p>
            </div>
        </asp:PlaceHolder>
    

    <div>
        <asp:ValidationSummary ID="ValidationSummary" runat="server" 
            ShowModelStateErrors="False" />
    </div>
        
    </form>
</body>
</html>
