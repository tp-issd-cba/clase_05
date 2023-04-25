<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Baja.aspx.cs" Inherits="Clase05.Baja" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Codigo del articulo: "></asp:Label>
            <asp:TextBox ID="CodigoTextBox" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="BorrarButton" runat="server" Text="Borrar" OnClick="BorrarButton_Click" />
            <br />
            <br />
            <asp:Label ID="ResultadoLabel" runat="server" Text=""></asp:Label>
            <br />
            <asp:SqlDataSource ID="DeleteDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:issdConnectionString %>" DeleteCommand="DELETE FROM articulos WHERE (id = @codigo)" SelectCommand="SELECT * FROM [articulos]">
                <DeleteParameters>
                    <asp:Parameter Name="codigo" />
                </DeleteParameters>
            </asp:SqlDataSource>
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Retornar</asp:HyperLink>

        </div>
    </form>
</body>
</html>
