#MaxThreadsPerHotkey, 2
SetDefaultMouseSpeed, 0
SetBatchLines, -1

F12::
    bFlag := !bFlag
    startTime := A_TickCount
    while (bFlag && A_TickCount - startTime <= 60000)
    {
        MouseClick, left, 1350, 750 
        sleep, 10
    }
    bFlag := false
    Return