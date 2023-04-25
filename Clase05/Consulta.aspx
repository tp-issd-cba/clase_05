<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Consulta.aspx.cs" Inherits="Clase05.Consulta" %>

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
            <asp:Button ID="ConsultaButton" runat="server" Text="Consulta" OnClick="ConsultaButton_Click" />
            <br />
            <br />
            <asp:Label ID="ResultadoLabel" runat="server" Text=""></asp:Label>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:issdConnectionString %>" SelectCommand="SELECT articulos.id, articulos.descripcion, articulos.precio, articulos.codigorubro, rubros.descripcion AS rubroDescripcion FROM articulos INNER JOIN rubros ON articulos.codigorubro = rubros.id
WHERE articulos.id = @codigo">
                <SelectParameters>
                    <asp:Parameter Name="codigo" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Retornar</asp:HyperLink>
        </div>
    </form>
</body>
</html>
