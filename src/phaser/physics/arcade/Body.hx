package phaser.physics.arcade;

@:native("Phaser.Physics.Arcade.Body")
extern class Body {
	function new (sprite:phaser.gameobjects.Sprite);
	var sprite:phaser.gameobjects.Sprite;
	var game:phaser.core.Game;
	var type:Float;
	var offset:phaser.geom.Point;
	var position(default, null):phaser.geom.Point;
	var prev(default, null):phaser.geom.Point;
	var allowRotation:Bool;
	var rotation:Float;
	var preRotation(default, null):Float;
	var sourceWidth(default, null):Float;
	var sourceHeight(default, null):Float;
	var width:Float;
	var height:Dynamic;
	var halfWidth:Float;
	var halfHeight:Float;
	var center:phaser.geom.Point;
	var velocity:phaser.geom.Point;
	var newVelocity(default, null):phaser.geom.Point;
	var deltaMax:phaser.geom.Point;
	var acceleration:phaser.geom.Point;
	var drag:phaser.geom.Point;
	var allowGravity:Bool;
	var gravity:phaser.geom.Point;
	var bounce:phaser.geom.Point;
	var maxVelocity:phaser.geom.Point;
	var angularVelocity:Float;
	var angularAcceleration:Float;
	var angularDrag:Float;
	var maxAngular:Float;
	var mass:Float;
	var angle(default, null):Float;
	var speed(default, null):Float;
	var facing:Float;
	var immovable:Bool;
	var moves:Bool;
	var customSeparateX:Bool;
	var customSeparateY:Bool;
	var overlapX:Float;
	var overlapY:Float;
	var embedded:Bool;
	var collideWorldBounds:Bool;
	var checkCollision:Dynamic;
	var touching:Dynamic;
	var wasTouching:Dynamic;
	var blocked:Dynamic;
	var tilePadding:phaser.geom.Point;
	var _sx:Float;
	var _sy:Float;
	var _dx:Float;
	var _dy:Float;
	function updateBounds ():Void;
	function preUpdate ():Void;
	function postUpdate ():Void;
	function destroy ():Void;
	function checkWorldBounds ():Void;
	function setSize (width:Float, height:Float, offsetX:Float, offsetY:Float):Void;
	function reset (x:Float, y:Float):Void;
	function onFloor ():Bool;
	function onWall ():Bool;
	function deltaAbsX ():Float;
	function deltaAbsY ():Float;
	function deltaX ():Float;
	function deltaY ():Float;
	function deltaZ ():Float;
	var bottom(default, null):Float;
	var right(default, null):Float;
	var x:Float;
	var y:Float;
	function renderDebug (context:Dynamic, body:phaser.physics.arcade.Body, ?color:String = 'rgb(255,255,255)', ?filled:Bool = true):Void;
	function renderBodyInfo (body:phaser.physics.arcade.Body, x:Float, y:Float, ?color:String = 'rgb(255,255,255)'):Void;
}
