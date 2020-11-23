Imports BusnessLayer
Imports EntityLayer

Public Class Login
    Inherits System.Web.UI.Page

    Protected Sub btnLogin_Click(sender As Object, e As EventArgs) Handles btnLogin.Click
        Dim user As User = UserBL.getInstance().login(txtEmail.Text, txtPassword.Text)

        If user IsNot Nothing Then
            Select Case user.Rol
                Case "admin"
                    Response.Redirect("HomeAdmin.aspx")

                Case "sponsor"
                    Session("userId") = user.Id
                    Response.Redirect("HomeCompany.aspx")

                Case "employee"
                    Response.Redirect("HomeEmployee.aspx")

                Case Else
                    Response.Write("<script>alert('USUARIO SIN ROL VALIDO')</script>")
            End Select

        Else
            Response.Write("<script>alert('USUARIO INCORRECTO')</script>")
        End If
    End Sub

    Protected Sub btnRegister_Click(sender As Object, e As EventArgs) Handles btnRegister.Click
        Response.Redirect("SignIn.aspx")
    End Sub
End Class