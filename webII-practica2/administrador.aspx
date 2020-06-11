<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="administrador.aspx.cs" Inherits="webII_practica2.administrador" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Cph_cabecera" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mensaje" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contenido" runat="server">
    <table class="nav-justified">
        <tr>
            <td class="text-center">Bienvenido al Sistema:
                <asp:label ID="lbl_mensaje" runat="server" text=""></asp:label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:button ID="btn_sesion" runat="server" text="Cerrar Sesion" width="127px" OnClick="btn_sesion_Click" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
