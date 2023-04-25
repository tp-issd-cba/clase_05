<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Modificacion.aspx.cs" Inherits="Clase05.Modificacion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label5" runat="server" Text="Codigo del articulo: "></asp:Label>
            <asp:TextBox ID="CodigoTextBox" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="ConsultaButton" runat="server" Text="Buscar" OnClick="ConsultaButton_Click" />
            <br />
            <br />

            <asp:Label ID="Label1" runat="server" Text="Descripcion:"></asp:Label>
            <asp:TextBox ID="descripcionTextBox" runat="server"></asp:TextBox>
            <br />

            <asp:Label ID="Label2" runat="server" Text="Precio:"></asp:Label>
            <asp:TextBox ID="PrecioTextBox" runat="server"></asp:TextBox>
            <br />

            <asp:Label ID="Label3" runat="server" Text="Rubro"></asp:Label>
            <asp:DropDownList ID="RubroDropDownList" runat="server" DataSourceID="RubrosSqlDataSource" DataTextField="descripcion" DataValueField="id"></asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="ModificacionButton" runat="server" Text="Modificacion" OnClick="ModificacionButton_Click" />
            <asp:Label ID="ResultadoLabel" runat="server" Text=""></asp:Label>
            <br />
            <asp:SqlDataSource ID="RubrosSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:issdConnectionString %>" SelectCommand="SELECT * FROM [rubros]">
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="BuscarDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:issdConnectionString %>" SelectCommand="SELECT articulos.id, articulos.descripcion, articulos.precio, articulos.codigorubro, rubros.id AS codigoRubro FROM articulos INNER JOIN rubros ON articulos.codigorubro = rubros.id WHERE (articulos.id = @codigo)">
                <SelectParameters>
                    <asp:Parameter Name="codigo" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="UpdateSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:issdConnectionString %>" SelectCommand="SELECT * FROM [articulos]" UpdateCommand="UPDATE articulos SET descripcion = @descripcion, precio = @precio, codigorubro = @codigoRubro WHERE (id = @codigo)">
                <UpdateParameters>
                    <asp:Parameter Name="descripcion" />
                    <asp:Parameter Name="precio" />
                    <asp:Parameter Name="codigoRubro" />
                    <asp:Parameter Name="codigo" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Retornar</asp:HyperLink>
     
        </div>
    </form>
</body>
</html>
