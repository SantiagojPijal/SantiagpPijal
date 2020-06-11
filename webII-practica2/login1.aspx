<%@ Page Title="" Language="C#" MasterPageFile="~/Login.Master" AutoEventWireup="true" CodeBehind="login1.aspx.cs" Inherits="webII_practica2.login1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Cph_cabecera" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mensaje" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contenido" runat="server">
     <asp:UpdatePanel ID="udp" runat="server">
        <ContentTemplate>
            <table>
                <tr>
                    <td colspan="2">Sistema de Seguridad</td>
                </tr>
                <tr>
            <td align="center">
            <table>
                <tr>
                <td style="width: 303px">Usuario:</td>
                   <td> <asp:TextBox ID="txt_nombre" runat="server" Height="25px" Width="230px"></asp:TextBox></td>
                </tr>
                <tr>
                <td style="width: 303px">Contraseña:</td>
                   <td> <asp:TextBox ID="txt_pass" runat="server" Height="25px" Width="230px"></asp:TextBox></td>
                </tr> 
                <tr>
                    <td style="width: 303px">
                        <asp:LinkButton ID="lnk_button" runat="server" href="recuperar.aspx">Olvido su contraseña</asp:LinkButton>
                        <asp:Button ID="btn_olvido" runat="server" Text="Recuperar" Visible="false" OnClick="btn_olvido_Click" />
                    </td>
                    <td>
                        <asp:Button ID="btn_ingreso" runat="server" Text="Ingresar al sistema" OnClick="btn_ingreso_Click" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 303px">Intentos: <asp:Label ID="label1" runat="server"></asp:Label> </td>
                    <td>Mensaje: <asp:Label ID="label2" runat="server" ForeColor="Red" Text="" Visible="false"></asp:Label></td>
                </tr>
                </table>
                </td>
                </tr>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
