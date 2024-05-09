#Persistent

firstRun := true
start := true

MapPizzaPartyDetect := false
CloseRejoin := true
active := false
AutoUbgrade := 0
Soldier := 1
skipPause := 1

TimerRunGame := false
SetTimer, TimerAction, % TimerRunGame

Loop
{
    if (start)
    {
        Run, % "msedge.exe ""https://www.roblox.com/games/3260590327/NEW-TOWER-Tower-Defense-Simulator?privateServerLinkCode=66841510318621869489743196957790"""
        Sleep 7000
        Sleep 15000
        Process, Close, msedge.exe
        Sleep 15000
    }

    ImageSearch, FoundX, FoundY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, *90 %A_Desktop%\CoinGrindTds\Details\Disconected.png
    if (ErrorLevel = 0)
    {
        active := false
        WaveSkip := 0
        SendInput, !{F4}
        SendInput, !{F4}
        start := true
        firstRun := false
        MapPizzaPartyDetect := false
        TimerRunGame := false
        Soldier := 1
        skipPause := 1
    }

    ImageSearch, FoundX, FoundY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, *70 %A_Desktop%\CoinGrindTds\Details\ReconnectDone.png
    if (ErrorLevel = 0)
    {
        start := false
        firstRun := true
    }

    ImageSearch, FoundX, FoundY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, *50 %A_Desktop%\CoinGrindTds\Details\FullScr.png
    if (ErrorLevel = 0)
    {
        Send {F11}
        MouseClick, left, %FoundX%, %FoundY%
    }

    if (firstRun)
    {

        ImageSearch, FoundX, FoundY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, *90 %A_Desktop%\CoinGrindTds\Details\joinedFriend.png
        if (ErrorLevel = 0)
        {
            MouseClick, left, %FoundX%, %FoundY%
        }

        ImageSearch, FoundX, FoundY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, *90 %A_Desktop%\CoinGrindTds\Details\RejoinNO.png
        if (ErrorLevel = 0)
        {
            MouseClick, left, %FoundX%, %FoundY%
            Sleep 875
        }

        ImageSearch, FoundX, FoundY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, *80 %A_Desktop%\CoinGrindTds\Details\CloseQuest.png
        if (ErrorLevel = 0)
        {
            MouseClick, left, %FoundX%, %FoundY%
        }

        ImageSearch, FoundX, FoundY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, *70 %A_Desktop%\CoinGrindTds\Details\JoinDetect.png
        if (ErrorLevel = 0)
        {

            ImageSearch, FoundX, FoundY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, *70 %A_Desktop%\CoinGrindTds\Details\DailySkip.png
            if (ErrorLevel = 0)
            {
                MouseClick, left, 962, 662
            }

            ImageSearch, FoundX, FoundY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, *50 %A_Desktop%\CoinGrindTds\Details\FullScr.png
            if (ErrorLevel = 0)
            {
                Send {F11}
                MouseClick, left, %FoundX%, %FoundY%
                Sleep 250
            }

            Send {S down}{Shift down}
            Sleep 1000
            Send {S up}
            Send {S down}{A down}
            Sleep 950
            Send {S up}{A up}{Shift up}
            Send {E down}
            Sleep 250
            Send {E up}
            Send {E down}
            Sleep 250
            Send {E up}
            Send {E down}
            Sleep 250
            Send {E up}

            ImageSearch, FoundX, FoundY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, *80 %A_Desktop%\CoinGrindTds\Details\FindMap.png
            if (ErrorLevel = 0)
            {
                MouseClick, left, %FoundX%, %FoundY%
                Click
                Click
                Click
                Click
                MouseClick, left, 955, 690
                Click
                Click
                Click
                Click
            }

            MapPizzaPartyDetect := true
            TimerRunGame := 100
            firstRun := false
            start := false
        }
    }
}

TimerAction:
    {
        if (MapPizzaPartyDetect)
        {
            ImageSearch, FoundX, FoundY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, *90 %A_Desktop%\CoinGrindTds\Details\MapDetect.png
            if (ErrorLevel = 0)
            {
                CoordMode, Mouse, Screen
                MouseMove 40, 40

                Send {O down}
                Sleep 1000
                Send {O up}
                ScreenWidth := A_ScreenWidth
                ScreenHeight := A_ScreenHeight
                TargetX := ScreenWidth // 2
                TargetY := ScreenHeight // 2
                MouseGetPos, startX, startY
                Click down right
                MouseMove TargetX, TargetY
                Click up right
                MouseMove startX, startY
                Sleep 750
                active := true
                TimerRunGame := 10
                runcycle := true
                MapPizzaPartyDetect := false
            }
        }

        if (runcycle)
        {
            if (skipPause)
            {
                ImageSearch, FoundX, FoundY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, *90 %A_Desktop%\CoinGrindTds\Details\SkipWave.png
                if (!ErrorLevel)
                {
                    active := true
                    MouseClick, left, 1025, 155
                    Click
                    Sleep 50
                    Click
                    Sleep 50
                    Click
                    MouseMove 40, 40
                }
            }

            ImageSearch, FoundX, FoundY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, *60 %A_Desktop%\CoinGrindTds\Details\YouLost.png
            if (!ErrorLevel)
            {
                active := false
                Soldier := 1
                skipPause := 1
                AutoUbgrade := 0
                SendInput, !{F4}
                SendInput, !{F4}
                start := true
                firstRun := false
                MapPizzaPartyDetect := false
                TimerRunGame := false
            }

            ImageSearch, FoundX, FoundY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, *60 %A_Desktop%\CoinGrindTds\Details\Pornyxa.png
            if (!ErrorLevel)
            {
                active := false
                AutoUbgrade := 0
                Soldier := 1
                skipPause := 1
                SendInput, !{F4}
                SendInput, !{F4}
                start := true
                firstRun := false
                MapPizzaPartyDetect := false
                TimerRunGame := false
            }

            if (AutoUbgrade == 0 || AutoUbgrade == 1 || AutoUbgrade == 2)
            {
                ImageSearch, FoundX, FoundY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, *95 %A_Desktop%\CoinGrindTds\Details\FullUbgrade.png
                if (!ErrorLevel)
                {
                    AutoUbgrade++
                }
            }

            if (Soldier)
            {
                ImageSearch, FoundX, FoundY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, *95 %A_Desktop%\CoinGrindTds\Details\Soldier2500Skip.png
                if (!ErrorLevel)
                {
                    AutoUbgrade++

                    Soldier := false
                }
            }

            ImageSearch, FoundX, FoundY, 0, 0, %A_ScreenWidth%, %A_ScreenHeight%, *90 %A_Desktop%\CoinGrindTds\Details\AutoCommando.png
            if (!ErrorLevel)
            {
                Send {C down}
                Send {C up}
            }

            if (active)
            {
                if (AutoUbgrade = 0) ; ставит солдата
                {
                    Send {1 down}
                    MouseClick left, 1229, 568
                    Send {1 up}
                    Send {Q down}
                    MouseClick left, 1229, 568
                    Send {Q up}
                    Send {E down}
                    Send {E up}
                    Sleep 10
                    Send {E down}
                    Send {E up}
                    Sleep 10
                    Send {E down}
                    Send {E up}
                    sleep 10
                    Send {E down}
                    Send {E up}
                    sleep 10
                }

                if (AutoUbgrade = 1) ; ставит фермы 4 штук
                {
                    skipPause := 0

                    Send {5 down}
                    MouseClick left, 1636, 859
                    Send {5 up}
                    Send {Q down}
                    MouseClick left, 1636, 859
                    Send {Q up}
                    Send {E down}
                    Send {E up}
                    Sleep 10
                    Send {E down}
                    Send {E up}
                    Sleep 10
                    Send {E down}
                    Send {E up}
                    sleep 10
                    Send {E down}
                    Send {E up}
                    sleep 10

                    Send {5 down}
                    MouseClick left, 1668, 788
                    Send {5 up}
                    Send {Q down}
                    MouseClick left, 1668, 788
                    Send {Q up}
                    Send {E down}
                    Send {E up}
                    Sleep 10
                    Send {E down}
                    Send {E up}
                    Sleep 10
                    Send {E down}
                    Send {E up}
                    sleep 10
                    Send {E down}
                    Send {E up}
                    sleep 10

                    Send {5 down}
                    MouseClick left, 1640, 574
                    Send {5 up}
                    Send {Q down}
                    MouseClick left, 1640, 574
                    Send {Q up}
                    Send {E down}
                    Send {E up}
                    Sleep 10
                    Send {E down}
                    Send {E up}
                    Sleep 10
                    Send {E down}
                    Send {E up}
                    sleep 10
                    Send {E down}
                    Send {E up}
                    sleep 10

                    Send {5 down}
                    MouseClick left, 1660, 510
                    Send {5 up}
                    Send {Q down}
                    MouseClick left, 1660, 510
                    Send {Q up}
                    Send {E down}
                    Send {E up}
                    Sleep 10
                    Send {E down}
                    Send {E up}
                    Sleep 10
                    Send {E down}
                    Send {E up}
                    sleep 10
                    Send {E down}
                    Send {E up}
                    Sleep 4500
                }

                if (AutoUbgrade = 1) ; ставит диджея
                {
                    Send {2 down}
                    MouseClick left, 1191, 451
                    Send {2 up}
                    Send {Q down}
                    MouseClick left, 1191, 451
                    Send {Q up}
                    Send {E down}
                    Send {E up}
                    Sleep 10
                    Send {E down}
                    Send {E up}
                    Sleep 10
                    Send {E down}
                    Send {E up}
                    sleep 10
                    Send {E down}
                    Send {E up}
                    sleep 10
                }

                if (AutoUbgrade = 3) ; командо 1-2-3 штук макс лвл
                {
                    Send {4 down}
                    MouseClick left, 1161, 510
                    Send {4 up}
                    Send {Q down}
                    MouseClick left, 1161, 510
                    Send {Q up}
                    Send {E down}
                    Send {E up}
                    Sleep 10
                    Send {E down}
                    Send {E up}
                    Sleep 10
                    Send {E down}
                    Send {E up}
                    sleep 10
                    Send {E down}
                    Send {E up}
                    sleep 10
                    Send {4 down}
                    MouseClick left, 1109, 500
                    Send {4 up}
                    Send {Q down}
                    MouseClick left, 1109, 500
                    Send {Q up}
                    Send {E down}
                    Send {E up}
                    Sleep 10
                    Send {E down}
                    Send {E up}
                    Sleep 10
                    Send {E down}
                    Send {E up}
                    sleep 10
                    Send {E down}
                    Send {E up}
                    sleep 10
                    Send {4 down}
                    MouseClick left, 1049, 489
                    Send {4 up}
                    Send {Q down}
                    MouseClick left, 1049, 489
                    Send {Q up}
                    Send {E down}
                    Send {E up}
                    Sleep 10
                    Send {E down}
                    Send {E up}
                    Sleep 10
                    Send {E down}
                    Send {E up}
                    sleep 10
                    Send {E down}
                    Send {E up}
                    sleep 10

                    AutoUbgrade := 4
                }

                if (AutoUbgrade = 4) ; рейнджеры 6 + командиры 3
                {
                    Send {3 down}
                    MouseClick left, 1083, 281
                    Send {3 up}
                    Send {Q down}
                    MouseClick left, 1083, 281
                    Send {Q up}
                    Send {E down}
                    Send {E up}
                    Sleep 10
                    Send {E down}
                    Send {E up}
                    Sleep 10
                    Send {E down}
                    Send {E up}
                    sleep 10
                    Send {E down}
                    Send {E up}
                    sleep 10

                    Send {3 down}
                    MouseClick left, 1140, 291
                    Send {3 up}
                    Send {Q down}
                    MouseClick left, 1140, 291
                    Send {Q up}
                    Send {E down}
                    Send {E up}
                    Sleep 10
                    Send {E down}
                    Send {E up}
                    Sleep 10
                    Send {E down}
                    Send {E up}
                    sleep 10
                    Send {E down}
                    Send {E up}
                    sleep 10

                    Send {3 down}
                    MouseClick left, 1203, 280
                    Send {3 up}
                    Send {Q down}
                    MouseClick left, 1203, 280
                    Send {Q up}
                    Send {E down}
                    Send {E up}
                    Sleep 10
                    Send {E down}
                    Send {E up}
                    Sleep 10
                    Send {E down}
                    Send {E up}
                    sleep 10
                    Send {E down}
                    Send {E up}
                    sleep 10

                    Send {3 down}
                    MouseClick left, 1199, 339
                    Send {3 up}
                    Send {Q down}
                    MouseClick left, 1199, 339
                    Send {Q up}
                    Send {E down}
                    Send {E up}
                    Sleep 10
                    Send {E down}
                    Send {E up}
                    Sleep 10
                    Send {E down}
                    Send {E up}
                    sleep 10
                    Send {E down}
                    Send {E up}
                    sleep 10

                    Send {3 down}
                    MouseClick left, 1135, 346
                    Send {3 up}
                    Send {Q down}
                    MouseClick left, 1135, 346
                    Send {Q up}
                    Send {E down}
                    Send {E up}
                    Sleep 10
                    Send {E down}
                    Send {E up}
                    Sleep 10
                    Send {E down}
                    Send {E up}
                    sleep 10
                    Send {E down}
                    Send {E up}
                    sleep 10

                    Send {3 down}
                    MouseClick left, 1074, 336
                    Send {3 up}
                    Send {Q down}
                    MouseClick left, 1074, 336
                    Send {Q up}
                    Send {E down}
                    Send {E up}
                    Sleep 10
                    Send {E down}
                    Send {E up}
                    Sleep 10
                    Send {E down}
                    Send {E up}
                    sleep 10
                    Send {E down}
                    Send {E up}
                    sleep 10
                    Sleep 4500

                    AutoUbgrade := 3
                    MouseClick, left, 40, 40
                }
            }
        }
    }

F1::ExitApp

Return