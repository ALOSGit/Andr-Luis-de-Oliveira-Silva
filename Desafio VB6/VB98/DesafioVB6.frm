VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Begin VB.Form Form1 
   Caption         =   "Cadastro de Cliente"
   ClientHeight    =   6210
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   7725
   LinkTopic       =   "Form1"
   ScaleHeight     =   6210
   ScaleWidth      =   7725
   StartUpPosition =   3  'Windows Default
   Begin MSDataGridLib.DataGrid DataGrid1 
      Bindings        =   "DesafioVB6.frx":0000
      Height          =   2535
      Left            =   240
      TabIndex        =   10
      Top             =   2880
      Width           =   7215
      _ExtentX        =   12726
      _ExtentY        =   4471
      _Version        =   393216
      HeadLines       =   1
      RowHeight       =   15
      BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ColumnCount     =   2
      BeginProperty Column00 
         DataField       =   ""
         Caption         =   ""
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1046
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column01 
         DataField       =   ""
         Caption         =   ""
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1046
            SubFormatType   =   0
         EndProperty
      EndProperty
      SplitCount      =   1
      BeginProperty Split0 
         BeginProperty Column00 
         EndProperty
         BeginProperty Column01 
         EndProperty
      EndProperty
   End
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   375
      Left            =   3240
      Top             =   5640
      Width           =   1215
      _ExtentX        =   2143
      _ExtentY        =   661
      ConnectMode     =   0
      CursorLocation  =   3
      IsolationLevel  =   -1
      ConnectionTimeout=   15
      CommandTimeout  =   30
      CursorType      =   3
      LockType        =   3
      CommandType     =   8
      CursorOptions   =   0
      CacheSize       =   50
      MaxRecords      =   0
      BOFAction       =   0
      EOFAction       =   0
      ConnectStringType=   3
      Appearance      =   1
      BackColor       =   -2147483643
      ForeColor       =   -2147483640
      Orientation     =   0
      Enabled         =   -1
      Connect         =   "DSN=PostgreSQL30"
      OLEDBString     =   ""
      OLEDBFile       =   ""
      DataSourceName  =   "PostgreSQL30"
      OtherAttributes =   ""
      UserName        =   "postgres"
      Password        =   "desafio"
      RecordSource    =   "select nome_str as Nome, cpf_str as CPF, email_str as Email, telefone_str as Telefone from ""clientes"""
      Caption         =   ""
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      _Version        =   393216
   End
   Begin VB.TextBox telefone_str 
      Height          =   375
      Left            =   1200
      TabIndex        =   9
      Top             =   1680
      Width           =   6255
   End
   Begin VB.TextBox email_str 
      Height          =   375
      Left            =   1200
      TabIndex        =   8
      Top             =   1200
      Width           =   6255
   End
   Begin VB.TextBox cpf_str 
      BeginProperty DataFormat 
         Type            =   0
         Format          =   "Format: $999."
         HaveTrueFalseNull=   0
         FirstDayOfWeek  =   0
         FirstWeekOfYear =   0
         LCID            =   1046
         SubFormatType   =   0
      EndProperty
      Height          =   375
      Left            =   1200
      TabIndex        =   7
      Top             =   720
      Width           =   6255
   End
   Begin VB.TextBox nome_str 
      Height          =   375
      Left            =   1200
      TabIndex        =   6
      Top             =   240
      Width           =   6255
   End
   Begin VB.CommandButton btn_sair 
      Caption         =   "Sair"
      Height          =   495
      Index           =   1
      Left            =   5760
      TabIndex        =   5
      Top             =   2160
      Width           =   1695
   End
   Begin VB.CommandButton btn_cadastrar 
      Caption         =   "Cadastrar"
      Height          =   495
      Left            =   240
      TabIndex        =   4
      Top             =   2160
      Width           =   1695
   End
   Begin VB.Label telefone_str_label 
      Caption         =   "Telefone"
      Height          =   255
      Index           =   3
      Left            =   240
      TabIndex        =   3
      Top             =   1680
      Width           =   735
   End
   Begin VB.Label email_str_label 
      Caption         =   "Email"
      Height          =   255
      Index           =   2
      Left            =   240
      TabIndex        =   2
      Top             =   1200
      Width           =   735
   End
   Begin VB.Label cpf_str_label 
      Caption         =   "CPF"
      Height          =   255
      Index           =   1
      Left            =   240
      TabIndex        =   1
      Top             =   720
      Width           =   735
   End
   Begin VB.Label nome_str_label 
      Caption         =   "Nome"
      Height          =   255
      Index           =   0
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   735
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim AdoConecta As New ADODB.Connection
Dim Conecta As String

Private Sub btn_cadastrar_Click()
    If nome_str = Empty Then
        MsgBox "Preencha o nome!", vbOKOnly, "Atenção"
    ElseIf cpf_str = Empty Then
        MsgBox "Preencha o CPF!", vbOKOnly, "Atenção"
    ElseIf email_str = Empty Then
        MsgBox "Preencha o Email!", vbOKOnly, "Atenção"
    ElseIf telefone_str = Empty Then
        MsgBox "Preencha o Telefone!", vbOKOnly, "Atenção"
    Else
        Dim cadastrar As String
        cadastrar = "INSERT INTO clientes (nome_str, cpf_str, email_str, telefone_str) VALUES ('" & nome_str.Text & "', '" & cpf_str.Text & "', '" & email_str.Text & "', '" & telefone_str.Text & "')"
        AdoConecta.Execute cadastrar
        MsgBox "Cliente cadastrado com sucesso!", vbOKOnly, "Atenção"
        Adodc1.Refresh
    End If
End Sub

Private Sub btn_sair_Click(Index As Integer)
    If MsgBox(" Tem certeza de que deseja sair? ", vbYesNo) = vbYes Then
        End
    End If
End Sub

Private Sub Form_Load()
    Conecta = "DSN=PostgreSQL30;Database=DesafioVB6;Server=localhost;Uid=postgres;Port=5432;pwd=desafio;"
    AdoConecta.Open Conecta
End Sub

