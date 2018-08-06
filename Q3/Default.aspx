<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>

<body>
    <ul>
        <li><a href="Default.aspx">Default</a></li>
        <li><a href="edit.aspx">edit.aspx</a></li>
        <li><a href="insert.aspx">insert.aspx</a></li>
    </ul>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource">
                <Columns>
                    <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                    <asp:BoundField DataField="YearPublished" HeaderText="Year Published" SortExpression="YearPublished" />
                    <asp:BoundField DataField="LastReadOn" HeaderText="Last Read On" SortExpression="LastReadOn" DataFormatString="{0:MM/dd/yyyy}" />
                    <asp:BoundField DataField="PageCount" HeaderText="Page Count" SortExpression="PageCount" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Title], [YearPublished], [LastReadOn], [PageCount] FROM [books]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Title], [YearPublished], [LastReadOn], [PageCount] FROM [books]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
