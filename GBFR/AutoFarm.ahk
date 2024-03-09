#Include "questing.ahk"

Home::
{
  ProcessSetPriority "High"
  
  Loop
  {
    ;Quest Start
    Loop
    {
      Click()
      Sleep PressDuration
    } Until (QuestStart())
    Sleep ShortWait

    Loop
    {
      QuestRoutine()
    } Until (HonorScreen())
    ;Quest End
    Sleep LongWait

    ;Honor Screen
    HonorLoop()
    Sleep LongWait

    WaitRewardScreen()
    Sleep LongWait*2

    ;Reward Screen
    if (RepeatQuest())
      continue
  }
}

QuestRoutine()
{
  Send "{A down}"
  Sleep PressDuration
  Send "{A up}"
  Sleep PressDuration
  Send "{R down}"
  Sleep PressDuration
  Send "{R up}"
  Sleep PressDuration
}
