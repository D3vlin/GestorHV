Imports System.Data.SqlClient

Public Class Conexion
    Private Shared conexion As Conexion

    Private Sub New()
    End Sub

    Public Shared Function getInstance() As Conexion
        If (conexion Is Nothing) Then
            conexion = New Conexion()
        End If

        Return conexion
    End Function

    Public Function conexionDB() As SqlConnection
        Dim conexion As SqlConnection = New SqlConnection()
        conexion.ConnectionString = "Data Source=DESKTOP-07O5NBL; Initial Catalog=GestorHV; Persist Security Info=True; Integrated Security=SSPI;"

        Return conexion
    End Function
End Class
