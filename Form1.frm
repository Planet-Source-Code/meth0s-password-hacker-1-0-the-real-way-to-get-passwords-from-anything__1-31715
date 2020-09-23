VERSION 5.00
Begin VB.Form frmmain 
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "PassHack 1.0"
   ClientHeight    =   480
   ClientLeft      =   45
   ClientTop       =   285
   ClientWidth     =   1560
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   480
   ScaleWidth      =   1560
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox Text1 
      Height          =   285
      IMEMode         =   3  'DISABLE
      Left            =   0
      Locked          =   -1  'True
      PasswordChar    =   "*"
      TabIndex        =   2
      Text            =   "OMG wut wut"
      Top             =   500
      Width           =   1575
   End
   Begin VB.CommandButton Command2 
      Caption         =   "About"
      Height          =   255
      Left            =   0
      TabIndex        =   1
      Top             =   240
      Width           =   1575
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Show Passwords"
      Height          =   255
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   1575
   End
End
Attribute VB_Name = "frmmain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
    EnumChildWindows GetDesktopWindow, AddressOf EnumChildProc, ByVal 0&
    Text1.SetFocus
End Sub

Private Sub Command2_Click()
    Text1.SetFocus
    MsgBox "PassHack 1.0 by meth0s" & vbCrLf & vbCrLf & "http://www.gamehack.de", vbSystemModal, "About"
End Sub

Private Sub Form_Activate()
    Text1.SetFocus
End Sub

Private Sub Form_Terminate()
    End
End Sub

Private Sub Form_Unload(Cancel As Integer)
    End
End Sub
