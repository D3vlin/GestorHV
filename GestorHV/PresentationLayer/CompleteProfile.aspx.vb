Imports BusnessLayer
Imports EntityLayer

Public Class CompleteProfile
    Inherits System.Web.UI.Page

    Private Sub btnUpdate_Click(sender As Object, e As EventArgs) Handles btnUpdate.Click
        Dim employee As Employee = GetEmployee()

        Dim rsp As Boolean = EmployeeBL.GetInstance().UpdateEmployee(employee)
        If rsp Then
            Response.Write("<script>alert('ACTUALIZACIÓN CORRECTO')</script>")
            CleanForm()

        Else
            Response.Write("<script>alert('ACTUALIZACIÓN INCORRECTA')</script>")
        End If
    End Sub

    Private Function GetEmployee() As Employee
        Dim employee As Employee = New Employee
        With employee
            .Identification = txtIdentification.Text
            .Names = txtNames.Text
            .Email = txtEmail.Text
            .Profession = txtProfession.Text
            .UserId = Session("userId")
        End With
        Return employee
    End Function

    Private Sub CleanForm()
        txtIdentification.Text = ""
        txtNames.Text = ""
        txtEmail.Text = ""
        txtProfession.Text = ""
    End Sub
End Class