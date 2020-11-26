Public Class Employee
    Private pId As Integer
    Private pIdentification As String
    Private pNames As String
    Private pEmail As String
    Private pProfession As String

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

    Public Property Identification As String
        Get
            Return Me.pIdentification
        End Get
        Set(ByVal value As String)
            Me.pIdentification = value
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

    Public Property Email As String
        Get
            Return Me.pEmail
        End Get
        Set(ByVal value As String)
            Me.pEmail = value
        End Set
    End Property

    Public Property Profession As String
        Get
            Return Me.pProfession
        End Get
        Set(ByVal value As String)
            Me.pProfession = value
        End Set
    End Property
End Class
