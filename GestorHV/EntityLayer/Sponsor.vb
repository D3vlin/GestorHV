Public Class Sponsor
    Private pId As Integer
    Private pNit As String
    Private pNames As String
    Private pAddress As String

    Public Sub New()
    End Sub

    Public Property Id As Integer
        Get
            Return Me.pId
        End Get
        Set(ByVal value As Integer)
            Me.pId = value
        End Set
    End Property

    Public Property Nit As String
        Get
            Return Me.pNit
        End Get
        Set(ByVal value As String)
            Me.pNit = value
        End Set
    End Property

    Public Property Names As String
        Get
            Return Me.pNames
        End Get
        Set(ByVal value As String)
            Me.pNames = value
        End Set
    End Property

    Public Property Address As String
        Get
            Return Me.pAddress
        End Get
        Set(ByVal value As String)
            Me.pAddress = value
        End Set
    End Property
End Class
