Imports System.Web.Services
Imports BusnessLayer
Imports EntityLayer

Public Class GeneralPanelAdmin
    Inherits System.Web.UI.Page

    <WebMethod>
    Public Shared Function SponsorList() As List(Of Sponsor)
        Dim sponsors As List(Of Sponsor)
        Try
            sponsors = SponsorBL.getInstance().SponsorList()

        Catch ex As Exception
            sponsors = Nothing
        End Try
        Return sponsors
    End Function

    <WebMethod>
    Public Shared Function EmployeeList() As List(Of Employee)
        Dim employees As List(Of Employee)
        Try
            employees = EmployeeBL.GetInstance().EmployeeList()

        Catch ex As Exception
            employees = Nothing
        End Try
        Return employees
    End Function
End Class