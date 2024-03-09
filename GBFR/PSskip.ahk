Joy12::
{
  ProcessSetPriority "High"
  
  PressDuration := 50
  ShortWait := 100
  LongWait := 300

  Sleep LongWait
  Send "{RButton down}"
  Sleep PressDuration
  Send "{RButton up}"
  Sleep ShortWait
  Send "{Up down}"
  Sleep PressDuration
  Send "{Up up}"
  Sleep PressDuration
  Send "{Enter down}"
  Sleep PressDuration
  Send "{Enter up}"
}