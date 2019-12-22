--[[
  Pixel Vision 8 - Key Example
  Copyright (C) 2017, Pixel Vision 8 (http://pixelvision8.com)
  Created by Jesse Freeman (@jessefreeman)

  This project was designed to display some basic instructions when you create
  a new game.  Simply delete the following code and implement your own Init(),
  Update() and Draw() logic.

  Learn more about making Pixel Vision 8 games at
  https://www.pixelvision8.com/getting-started
]]--

-- List of keys to test for
local keyStates = {
  {name = Keys.Alpha0, state = false},
  {name = Keys.Alpha1, state = false},
  {name = Keys.Alpha2, state = false},
  {name = Keys.Alpha3, state = false},
  {name = Keys.Alpha4, state = false},
  {name = Keys.Alpha5, state = false},
  {name = Keys.Alpha6, state = false},
  {name = Keys.Alpha7, state = false},
  {name = Keys.Alpha8, state = false},
  {name = Keys.Alpha9, state = false}
}

function Init()

  -- Create labels for all of the keys
  for i = 1, #keyStates do
    DrawText("Key " .. tostring(i - 1) .. " is down ", 1, i, DrawMode.Tile, "large", 15)
  end

end

function Update(timeDelta)

  -- Loop through all of the number keys and save the current state value
  for i = 1, #keyStates do
    keyStates[i].state = Key(keyStates[i].name)
  end

end

function Draw()

  -- Redraw the display
  RedrawDisplay()

  -- Loop through all the keys and display their current down state
  for i = 1, #keyStates do
    DrawText(tostring(keyStates[i].state), 128, (i * 8), DrawMode.Sprite, "large", 14)
  end

end
