--[[
  Pixel Vision 8 - StopSound Example
  Copyright (C) 2017, Pixel Vision 8 (http://pixelvision8.com)
  Created by Jesse Freeman (@jessefreeman)

  This project was designed to display some basic instructions when you create
  a new game.  Simply delete the following code and implement your own Init(),
  Update() and Draw() logic.

  Learn more about making Pixel Vision 8 games at
  https://www.pixelvision8.com/getting-started
]]--

-- Store the playback state of channel 0
local isPlaying = false

function Update(timeDelta)

  -- See if the channel has audio playing back on it
  isPlaying = IsChannelPlaying(0)

  -- Test if the left mouse button was released and if isPlaying equals false
  if(MouseButton(0, InputState.Released)) then

    -- Check to see if the channel is playing a sound
    if(isPlaying) then

      -- Stop the sound
      StopSound(0)

    else
      -- Play the second sound effect
      PlaySound(1)

    end

  end

end

function Draw()

  -- Redraw display
  RedrawDisplay()

  -- Test to see if the sound effect is playing
  if(isPlaying) then

    -- Draw the sound playback label
    DrawText("Click To Stop Sound Effect", 8, 8, DrawMode.Sprite, "large", 14)

  else

    -- Draw the instructions label
    DrawText("Click To Play Sound Effect", 8, 8, DrawMode.Sprite, "large", 15)

  end

end
