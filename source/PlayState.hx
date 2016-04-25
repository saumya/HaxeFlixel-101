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
	private var _player:Player;

	override public function create():Void
	{
		this.t= new FlxText(0,0,0,"Welcome to Play State");
		this.add(this.t);
		//
		_player = new Player(20, 20);
 		add(_player);
 		// final call
 		super.create();
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
	}
}
