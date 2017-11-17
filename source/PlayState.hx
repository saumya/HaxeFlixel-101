package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.math.FlxMath;

import flixel.util.FlxColor;
import flixel.util.FlxSpriteUtil;

class PlayState extends FlxState
{
	private var t:FlxText = null;
	private var _player:Player;

	override public function create():Void
	{
		this.t= new FlxText(0,0,0,"Welcome to Play State");
		this.add(this.t);
		
 		//
 		var _sprBack = new FlxSprite().makeGraphic(200, 200, FlxColor.BLACK);
        //FlxSpriteUtil.drawRect(_sprBack, 0, 0, FlxG.width, FlxG.height, FlxColor.WHITE);
        FlxSpriteUtil.drawRect(_sprBack, 0, 0, 100, 100, FlxColor.WHITE);
        add(_sprBack);

        //
		_player = new Player(20, 20);
 		add(_player);

 		//Camera follow the actor
 		FlxG.camera.follow(_player, TOPDOWN, 1);
 		//
 		FlxG.camera.fade(FlxColor.BLACK, 2.33, true); //fade-in

 		// final call
 		super.create();
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
	}
}
