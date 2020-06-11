<%@ Page Title="" Language="C#" MasterPageFile="~/Segunda.Master" AutoEventWireup="true" CodeBehind="usuario.aspx.cs" Inherits="webII_practica2.usuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Cph_cabecera" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mensaje" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contenido" runat="server">
    <table class="nav-justified">
        <tr>
            <td class="text-center">Bienvenido al Sistema Usuario:
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
    <table class="auto-style4">
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3" colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label1" runat="server" Text="Numero 1:"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="Num1_Txt" runat="server" Height="23px" Width="152px"></asp:TextBox>
                    </td>
                    <td class="auto-style3" colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label2" runat="server" Text="Numero 2:"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="Num2_Txt" runat="server" Height="23px" Width="152px"></asp:TextBox>
                    </td>
                    <td class="auto-style3" colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Button ID="Sumar_Btn" runat="server" Height="27px" OnClick="Sumar_Btn_Click" Text="Sumar" Width="91px" />
                    </td>
                    <td class="auto-style2">
                        <asp:Button ID="Restar_Btn" runat="server" Height="29px" OnClick="Restar_Btn_Click" Text="Restar" Width="95px" />
                    </td>
                    <td class="auto-style3">
                        <asp:Button ID="Multiplicar_Btn" runat="server" Height="27px" OnClick="Multiplicar_Btn_Click" Text="Multiplicar" Width="103px" />
                    </td>
                    <td class="auto-style3">
                        <asp:Button ID="Dividir_btn" runat="server" Height="25px" OnClick="Dividir_btn_Click" Text="Dividir" Width="80px" />
                    </td>
                     <td class="auto-style3">
                        <asp:Button ID="btn_potencia" runat="server" Height="25px" OnClick="btn_potencia_Click" Text="Potencia" Width="80px" />
                    </td>
                     <td class="auto-style3">
                        <asp:Button ID="btn_raiz" runat="server" Height="25px" OnClick="btn_raiz_Click" Text="Radicacion" Width="80px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Respuesta" runat="server" Text="Respuesta_"></asp:Label>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3" colspan="2">&nbsp;</td>
                </tr>
            </table>
</asp:Content>
