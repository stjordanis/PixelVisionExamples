--[[
  Pixel Vision 8 - BackgrondColor Example
  Copyright (C) 2017, Pixel Vision 8 (http://pixelvision8.com)
  Created by Jesse Freeman (@jessefreeman)

  Learn more about making Pixel Vision 8 games at
  https://www.pixelvision8.com/getting-started
]]--

function Init()

  -- Get the current background color
  local defaultColor = BackgroundColor()

  -- Draw the default background color ID to the display
  DrawText("Default Color " .. defaultColor, 1, 1, DrawMode.Tile, "large", 15)

  -- Here we are manually changing the background color
  local newColor = BackgroundColor(2)

  -- Draw the new color ID to the display
  DrawText("New Color " .. newColor, 1, 3, DrawMode.Tile, "large", 15)

end

function Draw()
  -- Redraw the display
  RedrawDisplay()
end
