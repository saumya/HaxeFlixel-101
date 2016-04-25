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
		// My Experiement
		this.init();
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
		//
		var myButton = new FlxButton(FlxG.width/2 , FlxG.height/2, "Lets Go", onButtonClick);
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
