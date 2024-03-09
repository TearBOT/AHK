#Requires AutoHotkey v2.0
#Include "questing.ahk"

F5::
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

F1::
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

    MoveCharacterToTopLeftAtStart()

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
}

F2::
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

    MoveCharacterToTopRightAtStart()

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
    if (RepeatQuest(Floor(WindowW*0.2), Floor(WindowH*0.745), Floor(WindowW*0.3), Floor(WindowH*0.785)))
      continue
  }
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
}

F3::
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

    MoveCharacterToBottomLeftAtStart()

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
    if (RepeatQuest(Floor(WindowW*0.2), Floor(WindowH*0.79), Floor(WindowW*0.3), Floor(WindowH*0.83)))
      continue
  }
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
}

F4::
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

    MoveCharacterToBottomRightAtStart()

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
    if (RepeatQuest(Floor(WindowW*0.2), Floor(WindowH*0.835), Floor(WindowW*0.3), Floor(WindowH*0.875)))
      continue
  }
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
