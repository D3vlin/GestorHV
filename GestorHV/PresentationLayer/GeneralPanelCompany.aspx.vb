Imports System.Web.Services
Imports BusnessLayer
Imports EntityLayer

Public Class GeneralPanelCompany
    Inherits System.Web.UI.Page
    Shared userId As String

    Private Sub GeneralPanelCompany_Load(sender As Object, e As EventArgs) Handles Me.Load
        userId = Session("userId")
    End Sub

    <WebMethod>
    Public Shared Function VacanciesList() As List(Of Vacancy)
        Dim vacancies As List(Of Vacancy)
        Dim sponsorId As String = SponsorBL.getInstance.GetSponsorId(userId)

        Try
            vacancies = VacancyBL.GetInstance().VacanciesList(sponsorId)

        Catch ex As Exception
            vacancies = Nothing
        End Try
        Return vacancies
    End Function
End Class