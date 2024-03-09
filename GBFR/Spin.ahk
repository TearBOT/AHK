#Include "globals.ahk"

P::
{
  i := 0
  mult := 1
  Loop
  {
    if (GetKeyState("o"))
      Break
    if (i < 0 || i > 200)
      mult := mult * -1
    MouseMove(i*5, 0, 50, "R")
    i := i + mult

    Sleep ShortWait
  }
}