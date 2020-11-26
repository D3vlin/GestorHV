Imports DataAccessLayer
Imports EntityLayer

Public Class VacancyBL
    Private Shared vacancyBL As VacancyBL

    Private Sub New()
    End Sub

    Public Shared Function GetInstance() As VacancyBL
        If (vacancyBL Is Nothing) Then
            vacancyBL = New VacancyBL()
        End If

        Return vacancyBL
    End Function

    Public Function RegisterNewVacancy(vacancy As Vacancy) As Boolean
        Try
            Return VacancyDAO.GetInstance().RegisterNewVacancy(vacancy)

        Catch ex As Exception
            Throw ex
        End Try
    End Function

    Public Function VacanciesList(id As Integer) As List(Of Vacancy)
        Try
            Return VacancyDAO.GetInstance().VacanciesList(id)

        Catch ex As Exception
            Throw ex
        End Try
    End Function
End Class
