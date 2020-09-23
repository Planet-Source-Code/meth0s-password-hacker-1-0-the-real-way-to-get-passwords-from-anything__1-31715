Attribute VB_Name = "Module1"
Public Declare Function GetDesktopWindow Lib "user32" () As Long
Public Declare Function EnumChildWindows Lib "user32" (ByVal hWndParent As Long, ByVal lpEnumFunc As Long, ByVal lParam As Long) As Long
Public Declare Function SendMessage Lib "user32" Alias "SendMessageA" (ByVal hwnd As Long, ByVal wMsg As Long, ByVal wParam As Long, lParam As Any) As Long
Public Const EM_SETPASSWORDCHAR = &HCC

Public Function EnumChildProc(ByVal hwnd As Long, ByVal lParam As Long) As Long
    SendMessage hwnd, EM_SETPASSWORDCHAR, 0, 0
    EnumChildProc = 1
End Function

