Imports System.Data.SqlClient
Imports EntityLayer

Public Class VacancyDAO
    Private Shared vacancyDAO As VacancyDAO

    Private Sub New()
    End Sub

    Public Shared Function GetInstance() As VacancyDAO
        If (vacancyDAO Is Nothing) Then
            vacancyDAO = New VacancyDAO()
        End If

        Return vacancyDAO
    End Function

    Public Function RegisterNewVacancy(vacancy As Vacancy) As Boolean
        Dim conn As SqlConnection = New SqlConnection()
        Dim cmd As SqlCommand
        Dim rows As Integer
        Dim response As Boolean = False

        Try
            conn = Conexion.getInstance().conexionDB()
            cmd = New SqlCommand("spRegisterNewVacancy", conn)
            cmd.CommandType = CommandType.StoredProcedure
            cmd.Parameters.AddWithValue("@pPosition", vacancy.Position)
            cmd.Parameters.AddWithValue("@pSalary", vacancy.Salary)
            cmd.Parameters.AddWithValue("@pContract", vacancy.Contract)
            cmd.Parameters.AddWithValue("@pExperience", vacancy.Experience)
            cmd.Parameters.AddWithValue("@pSponsorId", vacancy.SponsorId)
            conn.Open()

            rows = cmd.ExecuteNonQuery()
            If rows > 0 Then response = True

        Catch ex As Exception
            Throw ex

        Finally
            conn.Close()
        End Try

        Return response
    End Function
End Class
