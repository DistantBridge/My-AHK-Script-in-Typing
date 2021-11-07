
;右Ctrl变更为切换语言
RCtrl::
Send {LShift down}
Sleep 100
Send {LAlt down}
Sleep 100
Send {LAlt up}
Sleep 100
Send {LShift up}
Return

;右Shift变更为下划线
RShift::
Send {Shift down}
Sleep 10
Send {- down}
Sleep 10
Send {Shift up}
Sleep 10
Send {- up}
Return
