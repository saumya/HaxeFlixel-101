package;

import flixel.FlxGame;
import flixel.FlxG;

import openfl.display.Sprite;

class Main extends Sprite
{
	public function new()
	{
		super();
		
		//FlxG.debugger.visible = true; //fn2

		//addChild(new FlxGame(640, 480, MenuState));
		addChild(new FlxGame(640, 480, MenuState, 1, 60, 60, true, false));
	}
}