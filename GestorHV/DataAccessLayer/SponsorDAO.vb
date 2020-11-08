﻿Imports System.Data.SqlClient
Imports EntityLayer

Public Class SponsorDAO
    Private Shared sponsorDAO As SponsorDAO

    Private Sub New()
    End Sub

    Public Shared Function getInstance() As SponsorDAO
        If (sponsorDAO Is Nothing) Then
            sponsorDAO = New SponsorDAO()
        End If

        Return sponsorDAO
    End Function

    Public Function registerSponsor(sponsor As Sponsor, user As User) As Boolean
        Dim conn As SqlConnection = New SqlConnection()
        Dim cmd As SqlCommand
        Dim rows As Integer
        Dim response As Boolean = False

        Try
            conn = Conexion.getInstance().conexionDB()
            cmd = New SqlCommand("spRegisterSponsor", conn)
            cmd.CommandType = CommandType.StoredProcedure
            cmd.Parameters.AddWithValue("@pNit", sponsor.Nit)
            cmd.Parameters.AddWithValue("@pNames", sponsor.Names)
            cmd.Parameters.AddWithValue("@pAddress", sponsor.Address)
            cmd.Parameters.AddWithValue("@pUNames", user.Names)
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
End Class