Imports System.Data.SqlClient
Imports EntityLayer

Public Class UserDAO
    Private Shared userDAO As UserDAO

    Private Sub New()
    End Sub

    Public Shared Function getInstance() As UserDAO
        If (userDAO Is Nothing) Then
            userDAO = New UserDAO()
        End If

        Return userDAO
    End Function

    Public Function login(email As String, password As String) As User
        Dim conn As SqlConnection = New SqlConnection()
        Dim cmd As SqlCommand
        Dim dataR As SqlDataReader
        Dim user As User = Nothing

        Try
            conn = Conexion.getInstance().conexionDB()
            cmd = New SqlCommand("spLogin", conn)
            cmd.CommandType = CommandType.StoredProcedure
            cmd.Parameters.AddWithValue("@pEmail", email)
            cmd.Parameters.AddWithValue("@pPassword", password)
            conn.Open()

            dataR = cmd.ExecuteReader()
            If dataR.Read() Then
                user = New User()
                user.Id = Convert.ToInt32(dataR("id").ToString())
                user.Email = dataR("email").ToString()
                user.Password = dataR("password").ToString()
                user.Rol = dataR("rol").ToString()
            End If

        Catch ex As Exception
            user = Nothing
            Throw ex

        Finally
            conn.Close()
        End Try

        Return user
    End Function
End Class
