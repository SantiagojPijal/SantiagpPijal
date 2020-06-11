<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="recuperar.aspx.cs" Inherits="webII_practica2.recuperar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>REcuperar contraseña</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Recuperar su contraseña</h1>
              
            <asp:Label Text="Usuario" runat="server"></asp:Label>
            <asp:TextBox runat="server" ID="txt_nomlo"></asp:TextBox>
            <asp:Button Id="btn_recu" Text="Recuperar" runat="server" OnClick="btn_recu_Click" />
             <td>Mensaje: <asp:Label ID="label2" runat="server" ForeColor="Red" Text="" Visible="false"></asp:Label></td>
        </div>
    </form>
</body>
</html>
