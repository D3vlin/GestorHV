Public Class User
    Private pId As Integer
    Private pNames As String
    Private pEmail As String
    Private pPassword As String
    Private pRol As String

    Public Sub New()
    End Sub

    Public Sub New(pId As Integer, pNames As String, pEmail As String, pPassword As String)
        Me.pId = pId
        Me.pNames = pNames
        Me.pEmail = pEmail
        Me.pPassword = pPassword
    End Sub

    Public Property Id As Integer
        Get
            Return Me.pId
        End Get
        Set(ByVal value As Integer)
            Me.pId = value
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

    Public Property Password As String
        Get
            Return Me.pPassword
        End Get
        Set(ByVal value As String)
            Me.pPassword = value
        End Set
    End Property

    Public Property Rol As String
        Get
            Return Me.pRol
        End Get
        Set(ByVal value As String)
            Me.pRol = value
        End Set
    End Property
End Class
