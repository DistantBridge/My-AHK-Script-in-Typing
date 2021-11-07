
;右Ctrl变更为切换语言
RCtrl::
Send {LWin down}
Sleep 10
Send {Space down}
Sleep 10
Send {LWin up}
Sleep 10
Send {Space up}
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
