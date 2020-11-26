Imports System.Web.Services
Imports BusnessLayer
Imports EntityLayer

Public Class GeneralPanelEmployee
    Inherits System.Web.UI.Page

    <WebMethod>
    Public Shared Function AllVacanciesList() As List(Of Vacancy)
        Dim vacancies As List(Of Vacancy)

        Try
            vacancies = VacancyBL.GetInstance().AllVacanciesList()

        Catch ex As Exception
            vacancies = Nothing
        End Try
        Return vacancies
    End Function

End Class