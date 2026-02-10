Attribute VB_Name = "Northwind Help Function"
Option Compare Database
Option Explicit

Private Declare PtrSafe Function WinHelp Lib "user32.dll" Alias "WinHelpA" (ByVal hWnd As LongPtr, ByVal _
lpHelpFile As String, ByVal wCommand As Long, ByVal dwData As LongPtr) As Long
 Function ShowHelpAPI() As Boolean

    ' This procedure is used by the Show Me button on the NorthwindCustomMenuBar.
    ' It uses the WinHelp API function so that the Show Me Help button will provide
    ' help regardless of the current state of the object. Make sure that Nwind80.hlp
    ' is in the same directory as Northwind.mdb.

    Dim hWnd As Long, strHelpFile As String, lngContext As Long
    Dim lngRetVal As Long, obj As Object

    On Error Resume Next
    Const conHelpContext = &H1
    Set obj = Screen.ActiveForm

    If Err = 2475 Then
        ' Active object is not a form.
        ' Reset Err and test for Report object.
        Err = 0
        Set obj = Screen.ActiveReport
            If Err = 2476 Then
                ' Current object is not a form or a report; show Overview topic.
                strHelpFile = "Nwind80.hlp>Right"
                lngContext = 100
                lngRetVal = WinHelp(hWndAccessApp, strHelpFile, conHelpContext, lngContext)
                ShowHelpAPI = True
                Exit Function
            End If
    End If


    With obj
        hWnd = .hWnd
        strHelpFile = .HelpFile
        lngContext = .HelpContextId
    End With

    lngRetVal = WinHelp(hWnd, strHelpFile, conHelpContext, lngContext)
    ShowHelpAPI = True
End Function
