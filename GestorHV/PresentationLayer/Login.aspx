<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Login.aspx.vb" Inherits="PresentationLayer.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" class="bg-black">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Acceso al sistema</title>
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.1.0/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="css/AdminLTE.css" />
</head>
<body class="bg-black">
    <div class="form-box" id="login-box">
        <div class="header">Iniciar Sesión</div>
        <form id="form1" runat="server">
            <div class="body bg-gray">
                <div class="form-group">
                    <asp:TextBox runat="server" ID="txtUser" CssClass="form-control" placeholder="Ingrese usuario..." />
                    <asp:RequiredFieldValidator ValidationGroup="login" ErrorMessage="Debe ingresar su usuario" ControlToValidate="txtUser" runat="server" CssClass="text-danger" SetFocusOnError="true" />
                </div>
                <div class="form-group">
                    <asp:TextBox runat="server" ID="txtPassword" CssClass="form-control" TextMode="Password" placeholder="Ingrese clave..." />
                    <asp:RequiredFieldValidator ValidationGroup="login" ErrorMessage="Debe ingresar su clave" ControlToValidate="txtPassword" runat="server" CssClass="text-danger" SetFocusOnError="true" />
                </div>
            </div>
            <div class="footer">
                <asp:Button ValidationGroup="login" Text="Iniciar sesión" runat="server" ID="btnLogin" CssClass="btn bg-olive btn-block" />
            </div>
        </form>
    </div>
    <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script type="text/javascript" src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</body>
</html>
