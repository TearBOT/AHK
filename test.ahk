#SingleInstance Force
#Requires AutoHotkey v2.0
#Include "GBFR\questing.ahk"

NumpadDot::
{
  i := 0
  Loop
  {
    MouseMove(i*5, 0, 50, "R")
    Sleep ShortWait
    ++i
  }
}


Numpad7::
{
  MoveCharacterToTopLeftAtStart()
}

Numpad9::
{
  MoveCharacterToTopRightAtStart()
}

Numpad3::
{
  MoveCharacterToBottomRightAtStart()
}

Numpad1::
{
  MoveCharacterToBottomLeftAtStart()
}

MoveCharacterToTopLeftAtStart()
{
  Send "{Z down}{LShift down}"
  Sleep LongWait
  Send "{4 down}"
  Sleep PressDuration
  Send "{4 up}"
  Sleep VeryLongWait/2
  Send "{Q down}"
  Sleep VeryLongWait/2
  Send "{Z up}{Q up}{LShift up}"

  Sleep PressDuration
  Send "{LClick down}"
  Sleep PressDuration
  Send "{LClick up}"
  Sleep PressDuration
  Send "{LClick down}"
  Sleep PressDuration
  Send "{LClick up}"
  Sleep PressDuration
}

MoveCharacterToTopRightAtStart()
{
  Send "{Z down}{LShift down}"
  Sleep LongWait
  Send "{4 down}"
  Sleep PressDuration
  Send "{4 up}"
  Sleep VeryLongWait/2
  Send "{D down}"
  Sleep VeryLongWait/2
  Send "{Z up}{D up}{LShift up}"

  Sleep PressDuration
  Send "{LClick down}"
  Sleep PressDuration
  Send "{LClick up}"
  Sleep PressDuration
  Send "{LClick down}"
  Sleep PressDuration
  Send "{LClick up}"
  Sleep PressDuration
}

MoveCharacterToBottomRightAtStart()
{
  Send "{Z down}{LShift down}"
  Sleep ShortWait*2
  Send "{4 down}"
  Sleep PressDuration
  Send "{4 up}"
  Sleep LongWait
  Send "{D Down}"
  Sleep ShortWait*2
  Send "{D up}{LShift up}"
  Send ShortWait
  Send "{Z up}"

  Sleep PressDuration
  Send "{LClick down}"
  Sleep PressDuration
  Send "{LClick up}"
  Sleep PressDuration
  Send "{LClick down}"
  Sleep PressDuration
  Send "{LClick up}"
  Sleep PressDuration
}

MoveCharacterToBottomLeftAtStart()
{
  Send "{Z down}{LShift down}"
  Sleep ShortWait*2
  Send "{4 down}"
  Sleep PressDuration
  Send "{4 up}"
  Sleep LongWait
  Send "{Q Down}"
  Sleep ShortWait
  Send "{Q up}{LShift up}"
  Send ShortWait
  Send "{Z up}"

  Send PressDuration
  Send "{LClick down}"
  Sleep PressDuration
  Send "{LClick up}"
  Sleep PressDuration
  Send "{LClick down}"
  Sleep PressDuration
  Send "{LClick up}"
  Sleep PressDuration
}
