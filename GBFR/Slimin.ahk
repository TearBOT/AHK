#Requires AutoHotkey v2.0
#Include "questing.ahk"

Home::
{
  ProcessSetPriority "High"
  Run("Spin.ahk")

  loop
  {
    ;Quest Start
    Loop
    {
      Click()
    } Until (SlimeStart())
    Sleep ShortWait

    MoveCharacterToLocationAtStart()

    Sleep PressDuration
    Send "{p down}"
    Sleep ShortWait
    Send "{p up}"
    Sleep PressDuration

    Loop
    {
      RakamShootLoop()
      if (SlimeEnded())
        Break
      ShootLoop()
    } Until (SlimeEnded())
    ;Quest End

    Sleep PressDuration
    Send "{o down}"
    Sleep ShortWait
    Send "{o up}"
    Sleep ShortWait

    ;wait for Honor Screen
    Loop
    {
      Sleep LongWait
    } Until (HonorScreen())

    ;Honor Screen
    HonorLoop()
    Sleep LongWait*2

    WaitRewardScreen()
    Sleep LongWait*4

    ;Reward Screen
    if (RepeatQuest())
      continue
  }
}

MoveCharacterToLocationAtStart()
{
  Send "{Z down}{LShift down}"
  Sleep LongWait
  Send "{4 down}"
  Sleep PressDuration
  Send "{4 up}"
  Sleep VeryLongWait + LongWait/2
  Send "{Z up}{D down}"
  Sleep ShortWait
  Send "{D up}{LShift up}"
}

RakamShootLoop()
{
  Send "{3 down}"
  Sleep PressDuration/2
  Send "{3 up}"
  Sleep PressDuration/2
  ShootLoop()
}

ShootLoop()
{
  Loop 60
  {
    Click()
  }
}
