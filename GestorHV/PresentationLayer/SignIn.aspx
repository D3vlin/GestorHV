<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="SignIn.aspx.vb" Inherits="PresentationLayer.SignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" class="bg-black">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Registro</title>
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.1.0/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="css/AdminLTE.css" />
</head>
<body class="bg-black">
    <div class="form-box" id="login-box">
        <div class="header">Registro</div>
        <form id="form1" runat="server">
            <div class="body bg-gray">
                <div class="form-group">
                    <asp:TextBox runat="server" ID="txtNames" CssClass="form-control" placeholder="Ingrese sus nombres..." />
                    <asp:RequiredFieldValidator ValidationGroup="signIn" ErrorMessage="Debe ingresar sus nombres" ControlToValidate="txtNames" runat="server" CssClass="text-danger" SetFocusOnError="true" />
                </div>
                <div class="form-group">
                    <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control" placeholder="Ingrese email..." />
                    <asp:RequiredFieldValidator ValidationGroup="signIn" ErrorMessage="Debe ingresar su email" ControlToValidate="txtEmail" runat="server" CssClass="text-danger" SetFocusOnError="true" />
                </div>
                <div class="form-group">
                    <asp:TextBox runat="server" ID="txtPassword" CssClass="form-control" placeholder="Ingrese clave..." TextMode="Password" />
                    <asp:RequiredFieldValidator ValidationGroup="signIn" ErrorMessage="Debe ingresar su clave" ControlToValidate="txtPassword" runat="server" CssClass="text-danger" SetFocusOnError="true" />
                </div>
                <div class="form-group">
                    <asp:TextBox runat="server" ID="txtRepeatPassword" CssClass="form-control" placeholder="Repita clave..." TextMode="Password" />
                    <asp:RequiredFieldValidator ValidationGroup="signIn" ErrorMessage="Debe repetir su clave" ControlToValidate="txtRepeatPassword" runat="server" CssClass="text-danger" SetFocusOnError="true" />
                    <asp:CompareValidator ValidationGroup="signIn" ErrorMessage="Las contraseñas deben coincidir" ControlToValidate="txtRepeatPassword" ControlToCompare="txtPassword" Operator="Equal" CssClass="text-danger" runat="server" />
                </div>
            </div>
            <div class="footer">
                <asp:Button ValidationGroup="signIn" Text="Registrar" runat="server" ID="btnSingIn" CssClass="btn bg-green-gradient btn-block" />
                <asp:Button Text="Volver" runat="server" ID="btnBack" CssClass="btn bg-olive btn-block" />
            </div>
        </form>
    </div>
</body>
</html>
