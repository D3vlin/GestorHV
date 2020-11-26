Imports BusnessLayer
Imports EntityLayer

Public Class SignIn
    Inherits System.Web.UI.Page

    Private Sub btnSingIn_Click(sender As Object, e As EventArgs) Handles btnSingIn.Click
        Dim user As User = GetUser()

        Dim rsp As Boolean = EmployeeBL.GetInstance().RegisterEmployee(user)
        If rsp Then
            Response.Write("<script>alert('REGISTRO CORRECTO')</script>")
            CleanForm()

        Else
            Response.Write("<script>alert('REGISTRO INCORRECTO')</script>")
        End If
    End Sub

    Private Function GetUser() As User
        Dim user As User = New User
        With user
            .Id = 0
            .Names = txtNames.Text
            .Email = txtEmail.Text
            .Password = txtPassword.Text
            .Rol = "employee"
        End With
        Return user
    End Function

    Private Sub CleanForm()
        txtNames.Text = ""
        txtEmail.Text = ""
        txtPassword.Text = ""
        txtRepeatPassword.Text = ""
    End Sub

    Protected Sub btnBack_Click(sender As Object, e As EventArgs) Handles btnBack.Click
        Response.Redirect("Login.aspx")
    End Sub
End Class