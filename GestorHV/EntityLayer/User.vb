Public Class User
    Private pId As Integer
    Private pName As String
    Private pEmail As String
    Private pPassword As String

    Public Sub New()
    End Sub

    Public Sub New(pId As Integer, pName As String, pEmail As String, pPassword As String)
        Me.pId = pId
        Me.pName = pName
        Me.pEmail = pEmail
        Me.pPassword = pPassword
    End Sub

    Public Property Id As String
        Get
            Return Me.pId
        End Get
        Set(ByVal value As String)
            Me.pId = value
        End Set
    End Property

    Public Property Name As String
        Get
            Return Me.pName
        End Get
        Set(ByVal value As String)
            Me.pName = value
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
End Class
