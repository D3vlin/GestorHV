Imports BusnessLayer
Imports EntityLayer

Public Class GestionarPatrocinadores
    Inherits System.Web.UI.Page

    Private Sub btnRegister_Click(sender As Object, e As EventArgs) Handles btnRegister.Click
        Dim user As User = getUser()
        Dim sponsor As Sponsor = getSponsor()

        Dim rsp As Boolean = SponsorBL.getInstance().registerSponsor(sponsor, user)
        If rsp Then
            Response.Write("<script>alert('REGISTRO CORRECTO')</script>")
            cleanForm()

        Else
            Response.Write("<script>alert('REGISTRO INCORRECTO')</script>")
        End If
    End Sub

    Private Function getSponsor() As Sponsor
        Dim sponsor As Sponsor = New Sponsor
        With sponsor
            .Id = 0
            .Nit = txtNit.Text
            .Names = txtName.Text
            .Address = txtAddress.Text
        End With
        Return sponsor
    End Function

    Private Function getUser() As User
        Dim user As User = New User
        With user
            .Id = 0
            .Names = txtName.Text
            .Email = txtEmail.Text
            .Password = txtPassword.Text
            .Rol = "sponsor"
        End With
        Return user
    End Function

    Private Sub cleanForm()
        txtNit.Text = ""
        txtName.Text = ""
        txtAddress.Text = ""
        txtEmail.Text = ""
        txtPassword.Text = ""
        txtRepeatPassword.Text = ""
    End Sub
End Class