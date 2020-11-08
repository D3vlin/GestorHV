Imports DataAccessLayer
Imports EntityLayer

Public Class UserBL
    Private Shared userBL As UserBL

    Private Sub New()
    End Sub

    Public Shared Function getInstance() As UserBL
        If (userBL Is Nothing) Then
            userBL = New UserBL()
        End If

        Return userBL
    End Function

    Public Function login(email As String, password As String) As User
        Try
            Return UserDAO.getInstance().login(email, password)
        Catch ex As Exception
            Throw ex
        End Try
    End Function
End Class
