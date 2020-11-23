Public Class Vacancy
    Private pId As Integer
    Private pPosition As String
    Private pSalary As String
    Private pContract As String
    Private pExperience As String
    Private pSponsorId As String

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

    Public Property Position As String
        Get
            Return Me.pPosition
        End Get
        Set(ByVal value As String)
            Me.pPosition = value
        End Set
    End Property

    Public Property Salary As String
        Get
            Return Me.pSalary
        End Get
        Set(ByVal value As String)
            Me.pSalary = value
        End Set
    End Property

    Public Property Contract As String
        Get
            Return Me.pContract
        End Get
        Set(ByVal value As String)
            Me.pContract = value
        End Set
    End Property

    Public Property Experience As String
        Get
            Return Me.pExperience
        End Get
        Set(ByVal value As String)
            Me.pExperience = value
        End Set
    End Property

    Public Property SponsorId As String
        Get
            Return Me.pSponsorId
        End Get
        Set(ByVal value As String)
            Me.pSponsorId = value
        End Set
    End Property
End Class
