/**
Pixel Vision 8 - Key Example
Copyright(C) 2017, Pixel Vision 8 (http://pixelvision8.com)
Created by Jesse Freeman(@jessefreeman)

This project was designed to display some basic instructions when you create
a new game.Simply delete the following code and implement your own Init(),
Update() and Draw() logic.

Learn more about making Pixel Vision 8 games at
https://www.pixelvision8.com/getting-started
**/

using PixelVision8.Engine;
using PixelVision8.Engine.Chips;
using System.Collections.Generic;

namespace PixelVision8.Examples
{
    class KeyExample : GameChip
    {
        // List of keys to test for
        private Dictionary<Keys, bool> keyStates = new Dictionary<Keys, bool>()
        {
            {Keys.Alpha0, false},
            {Keys.Alpha1, false},
            {Keys.Alpha2, false},
            {Keys.Alpha3, false},
            {Keys.Alpha4, false},
            {Keys.Alpha5, false},
            {Keys.Alpha6, false},
            {Keys.Alpha7, false},
            {Keys.Alpha8, false},
            {Keys.Alpha9, false}
        };

        public override void Init()
        {

            // Use this counter during the foreach loop below
            var counter = 1;

            // Create labels for all of the keys
            foreach (var keyState in keyStates)
            {
                DrawText("Key " + keyState.Key + " is down ", 1, counter, DrawMode.Tile, "large", 15);
                counter++;
            }

        }

        public override void Update(int timeDelta)
        {

            // Need t o get a list of all the Dictionary's keys so we can iterate over them while updating each value
            var keyNames = new List<Keys>(keyStates.Keys);

            // Loop through all of the number keys and save the current state value
            foreach (Keys keyName in keyNames)
            {
                keyStates[keyName] = Key(keyName);
            }
        }

        public override void Draw()
        {
            // Redraw the display
            RedrawDisplay();

            // Use this counter during the foreach loop below
            var counter = 1;

            // Loop through all the keys and display their current down state
            foreach (var key in keyStates.Keys)
            {
                DrawText(keyStates[key].ToString(), 128 + 36, (counter * 8), DrawMode.Sprite, "large", 14);
                counter++;
            }

        }
    }
}