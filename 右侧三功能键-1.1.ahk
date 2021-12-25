
;右Ctrl 变更为 切换为中文 Shift+Alt+0
RCtrl::
Send {LShift down}
Sleep 10
Send {LAlt down}
Sleep 10
Send {0 down}
Sleep 10
Send {0 up}
Sleep 10
Send {LAlt up}
Sleep 10
Send {LShift up}
Return

;AppsKey Menu 键盘上的右键菜单 变更为 切换语言
AppsKey::
Send {LWin down}
Sleep 10
Send {Space down}
Sleep 10
Send {LWin up}
Sleep 10
Send {Space up}
Return


;右Shift 变更为 下划线
RShift::
Send {Shift down}
Sleep 10
Send {- down}
Sleep 10
Send {Shift up}
Sleep 10
Send {- up}
Return
