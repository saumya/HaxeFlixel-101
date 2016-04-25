package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.math.FlxMath;

class MenuState extends FlxState
{
	var t:FlxText = null;

	override public function create():Void
	{
		super.create();
		//
		this.t= new FlxText(0,0,0,"Hello");
		this.add(this.t);
		//
		trace(FlxG.VERSION);
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
	}
}
