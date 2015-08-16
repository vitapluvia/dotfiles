import XMonad

main = do
  xmonad $ defaultConfig {
    terminal = "urxvt",
    borderWidth = 4,
    normalBorderColor = "#222",
    focusedBorderColor = "#F50"
  }

