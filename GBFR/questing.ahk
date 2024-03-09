#Include "globals.ahk"

SlimeStart()
{
  if (ImageSearch(&OutputVarX, &OutputVarY, Floor(WindowW*0.85), 0, WindowW, Floor(WindowH*0.25), "*80 images\SlimeStart.png"))
    return (1)
  else
    return (0)
}

SlimeEnded()
{
  if (ImageSearch(&OutputVarX, &OutputVarY, Floor(WindowW*0.85), 0, WindowW, Floor(WindowH*0.25), "*80 images\SlimeEndLight.png")
  || ImageSearch(&OutputVarX, &OutputVarY, Floor(WindowW*0.85), 0, WindowW, Floor(WindowH*0.25), "*80 images\SlimeEndDark.png"))
    return (1)
  else
    return (0)
}

QuestStart()
{
  if (ImageSearch(&OutputVarX, &OutputVarY, 0, 0, Floor(WindowW*0.15), Floor(WindowH*0.25), "*80 images\CharacterIcon.png"))
    return (1)
  else
    return (0)
}

HonorScreen()
{
  if (ImageSearch(&OutputVarX, &OutputVarY, Floor(WindowW*0.2), Floor(WindowH*0.1), Floor(WindowW*0.35), Floor(WindowH*0.2), "*40 images\ExpIcon.png"))
    return (1)
  else
    return (0)
}

ContinuePrompt()
{
  if (ImageSearch(&OutputVarX, &OutputVarY, Floor(WindowW*0.35), Floor(WindowH*0.4), Floor(WindowW*0.45), Floor(WindowH*0.55), "*40 images\ContinueLetter.png"))
    return (1)
  else
    return (0)
}

RewardScreen()
{
  if (ImageSearch(&OutputVarX, &OutputVarY, Floor(WindowW*0.25), Floor(WindowH*0.15), Floor(WindowW*0.3), Floor(WindowH*0.2), "*40 images\RupiesIcon.png"))
    return (1)
  else
    return (0)
}

RewardsDisplayed()
{
  if (ImageSearch(&OutputVarX, &OutputVarY, Floor(WindowW*0.75), Floor(WindowH*0.7), Floor(WindowW*0.8), Floor(WindowH*0.8), "*40 images\4Icon.png"))
    return (1)
  else
    return (0)
}

RepeatOff(x, y, k, l)
{
  if (ImageSearch(&OutputVarX, &OutputVarY, x, y, k, l, "*40 images\NotRepeatLight.png")
  || ImageSearch(&OutputVarX, &OutputVarY, x, y, k, l, "*40 images\NotRepeatDark.png"))
    return (1)
  else
    return (0)
}

RepeatOn(x, y, k, l)
{
  if (ImageSearch(&OutputVarX, &OutputVarY, x, y, k, l, "*40 images\Repeat.png"))
    return (1)
  else
    return (0)
}

HonorLoop()
{
  Loop
  {
    Send "{3 down}"
    Sleep PressDuration
    Send "{3 up}"
    Sleep ShortWait
    Send "{Enter down}"
    Sleep PressDuration
    Send "{Enter up}"
    Sleep LongWait
  } Until (RewardScreen() || ContinuePrompt())
}

WaitRewardScreen()
{
  Loop
  {
    Sleep ShortWait
  } Until (RewardsDisplayed() || ContinuePrompt())
}

RepeatQuest(x := Floor(WindowW*0.2), y := Floor(WindowH*0.69), k := Floor(WindowW*0.3), l := Floor(WindowH*0.74))
{
  If (RepeatOn(x, y, k, l))
    return (1)  
  Else if (RepeatOff(x, y, k, l))
    TurnRepeatOn()
  Else
  {
    Send "{Up down}"
    Sleep PressDuration
    Send "{Up up}"
    Sleep ShortWait
    Send "{Enter down}"
    Sleep PressDuration
    Send "{Enter up}"
    Sleep LongWait

    If (RepeatOff(x, y, k, l))
      TurnRepeatOn()
  }
  return (1)
}

TurnRepeatOn()
{
  Send "{3 down}"
  Sleep ShortWait
  Send "{3 up}"
  Sleep LongWait
  Send "{Enter down}"
  Sleep ShortWait
  Send "{Enter up}"
  Sleep ShortWait
}

Click()
{
  Send "{LButton down}"
  Sleep PressDuration/2
  Send "{LButton up}"
  Sleep PressDuration/2
}
