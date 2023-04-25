﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Alta.aspx.cs" Inherits="Clase05.Alta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="height: 453px">
    <form id="form1" runat="server">
        <div>

            <asp:Label ID="Label1" runat="server" Text="Descripcion:"></asp:Label>
            <asp:TextBox ID="descripcionTextBox" runat="server"></asp:TextBox>
            <br />

            <asp:Label ID="Label2" runat="server" Text="Precio:"></asp:Label>
            <asp:TextBox ID="PrecioTextBox" runat="server"></asp:TextBox>
            <br />

            <asp:Label ID="Label3" runat="server" Text="Rubro"></asp:Label>
            <asp:DropDownList ID="RubroDropDownList" runat="server"></asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="AltaButton" runat="server" Text="Alta" />
            <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
            <br />
            <br />
            
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Retornar</asp:HyperLink>
        </div>
    </form>
</body>
</html>
