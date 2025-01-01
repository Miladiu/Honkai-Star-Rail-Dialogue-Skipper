#MaxThreadsPerHotkey, 2
SetDefaultMouseSpeed, 0
SetBatchLines, -1

F12::
    bFlag := !bFlag
    startTime := A_TickCount ; get the current tick count
    while (bFlag && A_TickCount - startTime <= 60000) ; continue while bFlag is true and less than 60 seconds have passed
    {
        MouseClick, left, 1350, 750 
        sleep, 10
    }
    bFlag := false ; set bFlag to false
    Return