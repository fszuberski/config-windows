WindowsTerminalToggle()
{
    windowHandleId := WinExist("ahk_exe WindowsTerminal.exe")

    if (windowHandleId)
    {   
        WinGet WindowsTerminalState, MinMax, "ahk_id %windowHandleId%"

        if (WindowsTerminalState == -1) {
            WinMaximize, "ahk_id %windowHandleId%"
            WinActivate, "ahk_id %windowHandleId%"
        } else {
            WinMinimize, "ahk_id %windowHandleId%"
        }
    }
    else
    {
        ; Run, *RunAs wt ; run as admin - needs special permissions
        Run, wt
    }
}

F12::WindowsTerminalToggle()