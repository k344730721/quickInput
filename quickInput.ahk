global latex_switch=false
return

;----开关控制
^r::
latex_switch:=!latex_switch
if(latex_switch)
{
    ToolTip, ：）
}

;----设置定时，函数名，时间
SetTimer, RemoveToolTip, -2000
return
;----声明函数
RemoveToolTip:
ToolTip
return

return

;--------------------无需开关，一直生效------------------------------
Right & PgDn::Enter 
PgDn & Right::Enter 
Right:: Send {Right}

 
;---------------------------------------------------------------------o

#if latex_switch
;--------------------开启时运行的代码段------------------------------

;-------方向-------
Space & i::Up
Space & k::Down
Space & j::Left 
Space & l::Right 
Space & u::Home
Space & o::End
Space & n::Pgup 
Space & m::PgDn 
Space & x::BackSpace
Space & c::Del 

 ;---Fn快捷键(我的小键盘没Fn)
Space & 1:: F1
Space & 2:: F2
Space & 3:: F3
Space & 5:: F5
Space & 6:: F6
Space & =:: F12
Space & Esc:: `

 ;---恢复空格的功能；会有一丢丢延迟； 目前只是中文输入法空格按得快会有点影响；还能接受；
Space:: Send {Space}

 ;---鼠标左键注释
^RButton:: ^/  
       
 ;---utools快捷键
!Space::
Send {Blind}{Space}
return

 ;---输入法切换快捷键
^Space::
Send {Blind}{Space}
return

 ;---Vscode:{}符号间跳转
Space & Tab:: ^+\
return
 ;---Vscode:折叠
Space & q:: ^+[
return
 ;---Vscode:删除块
Space & d::
Send {Ctrl down}+{Shift down}+[ + {Ctrl up}+{Shift up}
Send {Down}
Send {End}
Send {Shift}+{Home}+{Up}
;Send {Shift}+{Home}
Send {Delete}
return

 ;---Snipaste 插入文字快捷键修改
^2:: ^7
return


 ;---Snipaste 快速截图，全选，开启画笔
Space & MButton::
Send {F1}
sleep 100
Send ^a 
sleep 100
Send ^4
return

;Crtl是^
;Alt是！
;Shift是+
;Win是#
;>仅当
;--------------------开启时运行的代码段End------------------------------
#if

return