Imports BusnessLayer
Imports EntityLayer

Public Class NewVacancy
    Inherits System.Web.UI.Page

    Private Sub btnRegister_Click(sender As Object, e As EventArgs) Handles btnRegister.Click
        Dim vacancy As Vacancy = GetVancancy()

        Dim rsp As Boolean = VacancyBL.GetInstance().RegisterNewVacancy(vacancy)
        If rsp Then
            Response.Write("<script>alert('REGISTRO CORRECTO')</script>")

        Else
            Response.Write("<script>alert('REGISTRO INCORRECTO')</script>")
        End If
    End Sub

    Private Function GetVancancy() As Vacancy
        Dim vacancy As Vacancy = New Vacancy
        Dim sponsorId As String = SponsorBL.getInstance.GetSponsorId(Session("userId"))

        With vacancy
            .Id = 0
            .Position = txtPosition.Text
            .Salary = txtSalary.Text
            .Contract = txtContract.Text
            .Experience = txtExperience.Text
            .SponsorId = sponsorId
        End With
        Return vacancy
    End Function
End Class