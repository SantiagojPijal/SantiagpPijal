<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registroUsu.aspx.cs" Inherits="webII_practica2.registroUsu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td colspan="4">REGRISTRO DE USUARIO</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lbl_ced" runat="server" Text="Cedula"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txt_ced" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:Label ID="lbl_pass" runat="server" Text="Contraseña"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txt_pass" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_nom" runat="server" Text="Nombre"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txt_nom" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="lbl_usu" runat="server" Text="Nombre de Usuario"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txt_us" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_ape" runat="server" Text="Apellido"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txt_ape" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="lbl_correo" runat="server" Text="Correo"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txt_correo" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_dir" runat="server" Text="Direccion"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txt_dirr" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="lbl_tipo" runat="server" Text="Tipo"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txt_tipo" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_tel" runat="server" Text="Telefono"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txt_tel" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="btn_guardar" runat="server" OnClick="btn_guardar_Click" Text="Guardar" />
                    </td>
                    <td>
                        <asp:Button ID="btn_actualizar" runat="server" Text="Actualizar" />
                    </td>
                    <td>
                        <asp:Button ID="btn_eliminar" runat="server" Text="Eliminar" />
                    </td>
                </tr>
            </table>
        </div>
          <asp:GridView ID="verusu" runat="server" AutoGenerateColumns="false">
                    <Columns>
                        <asp:BoundField DataField="Usu_cedula" HeaderText="Cedula" />
                        <asp:BoundField DataField="Usu_Nombre" HeaderText="Nombre" />
                        <asp:BoundField DataField="Usu_apellido" HeaderText="Apellido" />
                          <asp:BoundField DataField="Usu_direccion" HeaderText="Direccion" />
                        <asp:BoundField DataField="Usu_telefono" HeaderText="Telefono" />
                        <asp:BoundField DataField="Usu_fechacreacion" HeaderText="Fecha de registro" />
                        <asp:BoundField DataField="Usu_contraseña" HeaderText="Contraseña" />
                          <asp:BoundField DataField="Usu_nomlogin" HeaderText="Usuario" />
                          <asp:BoundField DataField="Usu_correo" HeaderText="Correo" />
                          
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="lnk_ver" runat="server" 
                                    CommandArgument='<%#Eval ("Usu_id") %>' OnClick="lnk_ver_Click">Seleccionar</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns> 
                </asp:GridView>
    </form>
</body>
</html>
