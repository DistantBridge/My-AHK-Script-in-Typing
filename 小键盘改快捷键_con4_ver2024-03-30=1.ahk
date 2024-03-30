/*
该脚本用于将小数字键盘映射为各种快捷键。
在小数字键盘Numpad Lock开启时生效。
以下注释的左侧数字代表对应的小数字按键。右侧是其达到的功能。
*/


/*
若显示为乱码，则参考 https://wyagd001.github.io/zh-cn/docs/FAQ.htm#nonascii

简短的回答: 将脚本保存为带有 BOM 的 UTF-8.

虽然 AutoHotkey 支持 Unicode 文本, 但它是为了向后兼容而优化的, 这意味着默认为 ANSI 编码, 而不是国际上推荐的 UTF-8. 除非以字节顺序标记(BOM) 开始, 否则 AutoHotkey 不会自动识别 UTF-8 文件.

换句话说, 缺少 BOM 的 UTF-8 文件被错误地解释, 导致非 ASCII 字符被错误地解码. 要解决此问题, 请将文件保存为带有 BOM 的 UTF-8 文件或添加 /CP65001 命令行开关.

要在记事本中保存为带有 BOM 的 UTF-8 文件, 请在另存为对话框的 编码 下拉菜单中选择 带有 BOM 的 UTF-8(或版本早于 Windows 10 v1903 的系统中选择 UTF-8). 请注意, Windows 10 v1903 及以后版本的记事本默认为 UTF-8(没有 BOM)

要读取缺少 BOM 的其他 UTF-8 文件, 请使用 FileEncoding UTF-8-RAW, FileRead 的 *P65001 选项, 或 FileOpen() 的第三个参数 "UTF-8-RAW". -RAW 后缀可以省略, 但是在这种情况下, 任何创建的新文件都会有一个 BOM.

请注意, 使用标准 INI 命令访问 INI 文件不支持 UTF-8; 它们必须保存为 ANSI 或 UTF-16.


*/


#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.





; 显示各个按键的作用。
Numpad0:: 
    MsgBox, 9 利用Quicker呼出Everything。 0 显示各个按键的作用。. `n
        . 7  Win D 返回桌面。             8 Ctrl ； 欧路词典快捷键呼出。. `n ;这里的中文输出用了普通的分号会变成注释
        . 5 Shift F8 DeepL截图翻译。      6 Shift F2 DeepL复制翻译。. `n
        . 3 Alt Shift 0 切换为英文。      4 Alt Shift 0 用于切换输入法为中文。. `n
        . 1 Win Tab 多窗口切换。          2 Alt Tab 窗口切换。. `n
return



; 1 Win Tab 多窗口切换。
Numpad1::
    Send, {LWin Down}
    send, {Tab Down}
    send, {LWin Up}
    send, {Tab Up}
return


; 2 Alt Tab 窗口切换。
Numpad2::
    Send, {Alt Down}{Tab}{Alt Up}
return


; Alt+Shift+0，等待0.1秒后Alt+Shift。用于切换输入法为英文。
Numpad3::
    Send, {Alt Down}
    sleep, 10
    Send, {Shift Down}
    send, {0 Down}
    sleep, 10    
    send, {0 up}
    sleep, 10
    Send, {Shift Up}
    sleep, 10
    send,{Alt Up}
    Sleep, 10
    Send, {Alt Down}
    sleep ,10
    send, {Shift Down}
    Sleep, 10
    Send, {Alt up}
    sleep ,10
    send, {Shift up}

return



; Alt+Shift+0。用于切换输入法为中文。
Numpad4::
    Send, {Alt Down}
    sleep, 10
    Send, {Shift Down}
    send, {0 Down}
    sleep, 10    
    send, {0 up}
    sleep, 10
    Send, {Shift Up}
    sleep, 10
    send,{Alt Up}
return



; Shift F8 DeepL截图翻译。
Numpad5::
    Send, +{F8} ; 模拟按下Shift+F8
return



; Shift F2 DeepL翻译。
Numpad6::
    Send, +{F2} ; 模拟按下Shift+F2
return



; Win D 返回桌面。
Numpad7:: ; 当按下小键盘的7键时触发
    Send, #d ; 模拟按下Win+D
return



; Ctrl ; 欧路词典快捷键呼出。
Numpad8:: ; 当按下小键盘的8键时触发
    Send, ^{;}
return




/*
; Win ` Everything快捷键呼出。
Numpad9:: ; 当按下小键盘的9键时触发
    Send, {LWin Down}
    Sleep, 100
    Send, {ASC 96}  ; 发送`的Ascii码
    Sleep, 100
    Send, {LWin Up}
Return
*/
