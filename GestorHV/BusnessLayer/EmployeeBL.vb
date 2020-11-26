Imports DataAccessLayer
Imports EntityLayer

Public Class EmployeeBL
    Private Shared employeeBL As EmployeeBL

    Private Sub New()
    End Sub

    Public Shared Function GetInstance() As EmployeeBL
        If (employeeBL Is Nothing) Then
            employeeBL = New EmployeeBL()
        End If

        Return employeeBL
    End Function

    Public Function RegisterEmployee(user As User) As Boolean
        Try
            Return EmployeeDAO.GetInstance().RegisterEmployee(user)

        Catch ex As Exception
            Throw ex
        End Try
    End Function

    Public Function UpdateEmployee(employee As Employee) As Boolean
        Try
            Return EmployeeDAO.GetInstance().UpdateEmployee(employee)

        Catch ex As Exception
            Throw ex
        End Try
    End Function

    Public Function EmployeeList() As List(Of Employee)
        Try
            Return EmployeeDAO.GetInstance().EmployeeList()

        Catch ex As Exception
            Throw ex
        End Try
    End Function
End Class
