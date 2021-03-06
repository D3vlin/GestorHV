﻿Imports DataAccessLayer
Imports EntityLayer

Public Class SponsorBL
    Private Shared sponsorBL As SponsorBL

    Private Sub New()
    End Sub

    Public Shared Function getInstance() As SponsorBL
        If (sponsorBL Is Nothing) Then
            sponsorBL = New SponsorBL()
        End If

        Return sponsorBL
    End Function

    Public Function registerSponsor(sponsor As Sponsor, user As User) As Boolean
        Try
            Return SponsorDAO.getInstance().registerSponsor(sponsor, user)

        Catch ex As Exception
            Throw ex
        End Try
    End Function

    Public Function GetSponsorId(userId As String) As String
        Try
            Return SponsorDAO.getInstance().GetSponsorId(userId)

        Catch ex As Exception
            Throw ex
        End Try
    End Function

    Public Function SponsorList() As List(Of Sponsor)
        Try
            Return SponsorDAO.getInstance().SponsorList()

        Catch ex As Exception
            Throw ex
        End Try
    End Function
End Class
