<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="izvestaj.aspx.cs" Inherits="Prijava.izvestaj" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%@ PreviousPageType VirtualPath="~/prijava.aspx" %>
            <h1>Izveštaj</h1>
            <asp:Label ID="lblizvestaj" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
