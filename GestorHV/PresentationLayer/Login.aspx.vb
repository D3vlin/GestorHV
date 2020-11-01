Imports BusnessLayer
Imports EntityLayer

Public Class Login
    Inherits System.Web.UI.Page

    Protected Sub btnLogin_Click(sender As Object, e As EventArgs) Handles btnLogin.Click
        Dim user As User = UserBL.getInstance().login(txtUser.Text, txtPassword.Text)

        If user IsNot Nothing Then
            Response.Write("<script>alert('USUARIO CORRECTO')</script>")

        Else
            Response.Write("<script>alert('USUARIO INCORRECTO')</script>")
        End If
    End Sub
End Class