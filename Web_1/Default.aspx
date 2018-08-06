<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/main.css" rel="stylesheet" />
    <title>Jacob Brommeland Quiz 1</title>
</head>
<body>
    <h1>Contact Form:</h1>
    <form id="form1" runat="server">
        <div style="height: 283px">

            Name:<asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <br />
            Address:<asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
            <br />
            Email:<asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <br />
            Age:<asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit your info" />
            <br />
            <br />
            <asp:Button ID="btnClear" runat="server" OnClick="btnClear_Click" Text="Clear Form" Width="141px" />
            <br />
            <br />
            <asp:Label ID="lblResult" runat="server" BorderStyle="Solid" Height="150px" Width="300px"></asp:Label>

        </div>
    </form>
</body>
</html>
