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
		this.init();
		//
		super.create();
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
	}

	private function init():Void
	{
		this.t= new FlxText(0,0,0,"Hello World !");
		this.add(this.t);
		//
		trace(FlxG.VERSION);
		// type 1
		/*
		var myButton = new FlxButton(FlxG.width/2 , FlxG.height/2, "Lets Go", onButtonClick);
		this.add(myButton);
		*/
		// type 2
		var myButton = new FlxButton(0,0, "Lets Go", onButtonClick);
		myButton.screenCenter();
		this.add(myButton);

		// Custom graphics
		//myButton.loadGraphic("assets/custom.png");
	}

	private function onButtonClick():Void 
	{
		trace('onButtonClick');
		//trace(e);
		FlxG.switchState(new PlayState());
	}
}
