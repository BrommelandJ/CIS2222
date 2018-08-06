<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type ="text/css">
        .label{
            float: left;
            width: 60px;
        }
        .text{
            width:150px;
            float: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="column">
    <h2><u><b>Contact Form:<asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        </b></u></h2>
    <p>
        <asp:Label ID="lblName" runat="server" Text="Name:" CssClass="label"></asp:Label>
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="lblAddress" runat="server" Text="Address:" CssClass="label"></asp:Label>
        <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="lblEmail" runat="server" Text="Email:" CssClass="label"></asp:Label>
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="lblAge" runat="server" Text="Age:" CssClass="label"></asp:Label>
        <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="btnSubmit" runat="server" Text="Submit your info" />
    </p>
    <p>

        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter your name" ControlToValidate="txtName"></asp:RequiredFieldValidator><br>

        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter your address" ControlToValidate="txtAddress"></asp:RequiredFieldValidator><br>

        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="Please enter your email"></asp:RequiredFieldValidator><br>

        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please enter your age" ControlToValidate="txtAge"></asp:RequiredFieldValidator><br>

        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Please enter correct email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator><br>
        
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtAge" ErrorMessage="Your age cannot be less than 21" MinimumValue="21" Type="Integer" MaximumValue="999"></asp:RangeValidator><br>

    </p>

    </div>
</asp:Content>
