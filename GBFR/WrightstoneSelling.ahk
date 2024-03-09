﻿PgDn::
{
  ProcessSetPriority "High"
  
  PressDuration := 50
  LongWait := 600
  ShortWait := 100
  
  Send "{Esc down}"
  Sleep PressDuration
  Send "{Esc up}"
  Sleep LongWait
  Send "{Z down}"
  Sleep PressDuration
  Send "{Z up}"
  Sleep LongWait
  Send "{Enter down}"
  Sleep PressDuration
  Send "{Enter up}"
  Sleep LongWait
  Send "{Enter down}"
  Sleep PressDuration
  Send "{Enter up}"
  Sleep LongWait

  Send "{D down}"
  Sleep PressDuration
  Send "{D up}"
  Sleep ShortWait
  Send "{D down}"
  Sleep PressDuration
  Send "{D up}"
  Sleep ShortWait
  Send "{D down}"
  Sleep PressDuration
  Send "{D up}"
  Sleep ShortWait

  Loop 30
  {
    if (GetKeyState("Pause"))
    {
      Exit
    }
    Send "{Enter down}"
    Sleep PressDuration
    Send "{Enter up}"
    Sleep ShortWait
    Send "{Z down}"
    Sleep PressDuration
    Send "{Z up}"
    Sleep ShortWait
  }
  Sleep LongWait

  Send "{3 down}"
  Sleep PressDuration
  Send "{3 up}"
  Sleep LongWait
  Send "{Z down}"
  Sleep PressDuration
  Send "{Z up}"
  Sleep LongWait
  Send "{Enter down}"
  Sleep PressDuration
  Send "{Enter up}"
  Sleep LongWait
  Send "{Enter down}"
  Sleep PressDuration
  Send "{Enter up}"
  Sleep LongWait
  Send "{S down}"
  Sleep PressDuration
  Send "{S up}"
  Sleep LongWait
  Send "{Enter down}"
  Sleep PressDuration
  Send "{Enter up}"
  Sleep LongWait
  Send "{Enter down}"
  Sleep PressDuration
  Send "{Enter up}"
  Sleep LongWait
  Send "{Esc down}"
  Sleep PressDuration
  Send "{Esc up}"
  Sleep LongWait
  Send "{Esc down}"
  Sleep PressDuration
  Send "{Esc up}"
  Sleep LongWait
  Send "{S down}"
  Sleep PressDuration
  Send "{S up}"
  Sleep LongWait
  Send "{Enter down}"
  Sleep PressDuration
  Send "{Enter up}"
  Sleep LongWait

  Loop 600
  {
    if (GetKeyState("Pause"))
    {
    
      Exit
    }
    Send "{LButton down}"
    Sleep PressDuration
    Send "{LButton up}"
    Sleep PressDuration
  }
}
