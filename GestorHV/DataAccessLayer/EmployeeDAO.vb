Imports System.Data.SqlClient
Imports EntityLayer

Public Class EmployeeDAO
    Private Shared employeeDAO As EmployeeDAO

    Private Sub New()
    End Sub

    Public Shared Function GetInstance() As EmployeeDAO
        If (employeeDAO Is Nothing) Then
            employeeDAO = New EmployeeDAO()
        End If

        Return employeeDAO
    End Function

    Public Function RegisterEmployee(user As User) As Boolean
        Dim conn As SqlConnection = New SqlConnection()
        Dim cmd As SqlCommand
        Dim rows As Integer
        Dim response As Boolean = False

        Try
            conn = Conexion.getInstance().conexionDB()
            cmd = New SqlCommand("spRegisterEmployee", conn)
            cmd.CommandType = CommandType.StoredProcedure
            cmd.Parameters.AddWithValue("@pNames", user.Names)
            cmd.Parameters.AddWithValue("@pEmail", user.Email)
            cmd.Parameters.AddWithValue("@pPassword", user.Password)
            cmd.Parameters.AddWithValue("@pRol", user.Rol)
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

    Public Function UpdateEmployee(employee As Employee) As Boolean
        Dim conn As SqlConnection = New SqlConnection()
        Dim cmd As SqlCommand
        Dim rows As Integer
        Dim response As Boolean = False

        Try
            conn = Conexion.getInstance().conexionDB()
            cmd = New SqlCommand("spUpdateEmployee", conn)
            cmd.CommandType = CommandType.StoredProcedure
            cmd.Parameters.AddWithValue("@pIdentification", employee.Identification)
            cmd.Parameters.AddWithValue("@pNames", employee.Names)
            cmd.Parameters.AddWithValue("@pEmail", employee.Email)
            cmd.Parameters.AddWithValue("@pProfession", employee.Profession)
            cmd.Parameters.AddWithValue("@pUserId", employee.UserId)
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
