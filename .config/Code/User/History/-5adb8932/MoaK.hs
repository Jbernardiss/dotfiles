
--IMPORTS

import XMonad
import XMonad.Config.Desktop
import XMonad.Util.EZConfig
import XMonad.Hooks.DynamicLog

-- TALK TO XMOBAR
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.StatusBar
import XMonad.Hooks.StatusBar.PP

--MAIN

main = xmonad =<< statusBar myBar myPP toggleStrutsKey myConfig


--BAR

myBar = "xmobar"


--CUSTOM PP(determines what's written to the bar)

myPP = xmobarPP 


--KEY BINDINGS(toggle gap from the bar)

toggleStrutsKey XConfig { XMonad.modMask = modMask } = (modMask, xK_b)


--Main Config

myConfig = def {
    modMask = mod4Mask,
    terminal = "alacritty",
    borderWidth = 3,
    focusFollowsMouse = True,
    workspaces = ["1", "2", "3", "4", "5", "6", "7", "8", "9"],

    normalBorderColor = "#84D9D0",
    focusedBorderColor = "#F24B59"
}

-- STARTUP HOOK


