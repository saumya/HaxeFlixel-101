package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.math.FlxMath;

class PlayState extends FlxState
{
	private var t:FlxText = null;

	override public function create():Void
	{
		super.create();
		//
		this.t= new FlxText(0,0,0,"Welcome to Play State");
		this.add(this.t);
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
	}
}
