package phaser.math;

@:native("Phaser.Math")
extern class Math {
	
	/**
	 * = 2 &pi;
	 */
	function PI2 ():Void;
	
	/**
	 * Two number are fuzzyEqual if their difference is less than &epsilon;.
	 */
	function fuzzyEqual (a:Float, b:Float, epsilon:Float):Bool;
	
	/**
	 * a is fuzzyLessThan b if it is less than b + &epsilon;.
	 */
	function fuzzyLessThan (a:Float, b:Float, epsilon:Float):Bool;
	
	/**
	 * a is fuzzyGreaterThan b if it is more than b - &epsilon;.
	 */
	function fuzzyGreaterThan (a:Float, b:Float, epsilon:Float):Bool;
	
	/**
	 * Averages all values passed to the function and returns the result. You can pass as many parameters as you like.
	 */
	function average ():Float;
	
	/**
	 * Snap a value to nearest grid slice, using rounding.
	 * 
	 * Example: if you have an interval gap of 5 and a position of 12... you will snap to 10 whereas 14 will snap to 15.
	 */
	function snapTo (input:Float, gap:Float, ?start:Float):Float;
	
	/**
	 * Snap a value to nearest grid slice, using floor.
	 * 
	 * Example: if you have an interval gap of 5 and a position of 12... you will snap to 10. As will 14 snap to 10... but 16 will snap to 15
	 */
	function snapToFloor (input:Float, gap:Float, ?start:Float):Float;
	
	/**
	 * Snap a value to nearest grid slice, using ceil.
	 * 
	 * Example: if you have an interval gap of 5 and a position of 12... you will snap to 15. As will 14 will snap to 15... but 16 will snap to 20.
	 */
	function snapToCeil (input:Float, gap:Float, ?start:Float):Float;
	
	/**
	 * Snaps a value to the nearest value in an array.
	 */
	function snapToInArray (input:Float, arr:Array<Dynamic>, sort:Bool):Float;
	
	/**
	 * Round to some place comparative to a 'base', default is 10 for decimal place.
	 * 
	 * 'place' is represented by the power applied to 'base' to get that place
	 * e.g.
	 * 2000/7 ~= 285.714285714285714285714 ~= (bin)100011101.1011011011011011
	 * 
	 * roundTo(2000/7,3) === 0
	 * roundTo(2000/7,2) == 300
	 * roundTo(2000/7,1) == 290
	 * roundTo(2000/7,0) == 286
	 * roundTo(2000/7,-1) == 285.7
	 * roundTo(2000/7,-2) == 285.71
	 * roundTo(2000/7,-3) == 285.714
	 * roundTo(2000/7,-4) == 285.7143
	 * roundTo(2000/7,-5) == 285.71429
	 * 
	 * roundTo(2000/7,3,2)  == 288       -- 100100000
	 * roundTo(2000/7,2,2)  == 284       -- 100011100
	 * roundTo(2000/7,1,2)  == 286       -- 100011110
	 * roundTo(2000/7,0,2)  == 286       -- 100011110
	 * roundTo(2000/7,-1,2) == 285.5     -- 100011101.1
	 * roundTo(2000/7,-2,2) == 285.75    -- 100011101.11
	 * roundTo(2000/7,-3,2) == 285.75    -- 100011101.11
	 * roundTo(2000/7,-4,2) == 285.6875  -- 100011101.1011
	 * roundTo(2000/7,-5,2) == 285.71875 -- 100011101.10111
	 * 
	 * Note what occurs when we round to the 3rd space (8ths place), 100100000, this is to be assumed
	 * because we are rounding 100011.1011011011011011 which rounds up.
	 */
	function roundTo (value:Float, place:Float, base:Float):Float;
	
	/**
	 * A one dimensional linear interpolation of a value.
	 */
	function interpolateFloat (a:Float, b:Float, weight:Float):Float;
	
	/**
	 * Find the angle of a segment from (x1, y1) -> (x2, y2).
	 */
	function angleBetween (x1:Float, y1:Float, x2:Float, y2:Float):Float;
	
	/**
	 * Find the angle of a segment from (point1.x, point1.y) -> (point2.x, point2.y).
	 */
	function angleBetweenPoints (point1:Dynamic, point2:Dynamic):Float;
	
	/**
	 * Reverses an angle.
	 */
	function reverseAngle (angleRad:Float):Float;
	
	/**
	 * Normalizes an angle to the [0,2pi) range.
	 */
	function normalizeAngle (angleRad:Float):Float;
	
	/**
	 * Normalizes a latitude to the [-90,90] range. Latitudes above 90 or below -90 are capped, not wrapped.
	 */
	function normalizeLatitude (lat:Float):Float;
	
	/**
	 * Normalizes a longitude to the [-180,180] range. Longitudes above 180 or below -180 are wrapped.
	 */
	function normalizeLongitude (lng:Float):Float;
	
	/**
	 * Closest angle between two angles from a1 to a2 absolute value the return for exact angle
	 */
	function nearestAngleBetween (a1:Float, a2:Float, radians:Bool):Float;
	
	/**
	 * Interpolate across the shortest arc between two angles.
	 */
	function interpolateAngles (a1:Float, a2:Float, weight:Float, radians:Bool, ease:Dynamic):Float;
	
	/**
	 * Generate a random bool result based on the chance value.
	 * 
	 * 
	 * Returns true or false based on the chance value (default 50%). For example if you wanted a player to have a 30% chance
	 * of getting a bonus, call chanceRoll(30) - true means the chance passed, false means it failed.
	 * 
	 */
	function chanceRoll (chance:Float):Bool;
	
	/**
	 * Returns an Array containing the numbers from min to max (inclusive).
	 */
	function numberArray (min:Float, max:Float):Array<Dynamic>;
	
	/**
	 * Adds the given amount to the value, but never lets the value go over the specified maximum.
	 */
	function maxAdd (value:Float, amount:Float, max:Float):Float;
	
	/**
	 * Subtracts the given amount from the value, but never lets the value go below the specified minimum.
	 */
	function minSub (value:Float, amount:Float, min:Float):Float;
	
	/**
	 * Ensures that the value always stays between min and max, by wrapping the value around.
	 * max should be larger than min, or the function will return 0.
	 */
	function wrap (value:Float, min:Float, max:Float):Float;
	
	/**
	 * Adds value to amount and ensures that the result always stays between 0 and max, by wrapping the value around.
	 * Values must be positive integers, and are passed through Math.abs.
	 */
	function wrapValue (value:Float, amount:Float, max:Float):Float;
	
	/**
	 * Ensures the given value is between min and max inclusive.
	 */
	function limitValue (value:Float, min:Float, max:Float):Float;
	
	/**
	 * Randomly returns either a 1 or -1.
	 */
	function randomSign ():Float;
	
	/**
	 * Returns true if the number given is odd.
	 */
	function isOdd (n:Float):Bool;
	
	/**
	 * Returns true if the number given is even.
	 */
	function isEven (n:Float):Bool;
	
	/**
	 * Updated version of Math.min that can be passed either an array of numbers or the numbers as parameters.
	 * See <a href='http://jsperf.com/math-s-min-max-vs-homemade/5'>http://jsperf.com/math-s-min-max-vs-homemade/5</a>
	 */
	function min ():Float;
	
	/**
	 * Updated version of Math.max that can be passed either an array of numbers or the numbers as parameters.
	 */
	function max ():Float;
	
	/**
	 * Updated version of Math.min that can be passed a property and either an array of objects or the objects as parameters.
	 * It will find the lowest matching property value from the given objects.
	 */
	function minProperty ():Float;
	
	/**
	 * Updated version of Math.max that can be passed a property and either an array of objects or the objects as parameters.
	 * It will find the largest matching property value from the given objects.
	 */
	function maxProperty ():Float;
	
	/**
	 * Keeps an angle value between -180 and +180.
	 */
	function wrapAngle (angle:Float, radians:Bool):Float;
	
	/**
	 * Keeps an angle value between the given min and max values.
	 */
	function angleLimit (angle:Float, min:Float, max:Float):Float;
	
	/**
	 * A Linear Interpolation Method, mostly used by Phaser.Tween.
	 */
	function linearInterpolation (v:Float, k:Float):Float;
	
	/**
	 * A Bezier Interpolation Method, mostly used by Phaser.Tween.
	 */
	function bezierInterpolation (v:Float, k:Float):Float;
	
	/**
	 * A Catmull Rom Interpolation Method, mostly used by Phaser.Tween.
	 */
	function catmullRomInterpolation (v:Float, k:Float):Float;
	
	/**
	 * Description.
	 */
	function Linear (p0:Float, p1:Float, t:Float):Float;
	
	/**
	 * Description.
	 */
	function catmullRom (p0:Float, p1:Float, p2:Float, p3:Float, t:Float):Float;
	
	/**
	 * Fetch a random entry from the given array.
	 * Will return null if random selection is missing, or array has no entries.
	 */
	function getRandom (objects:Array<Dynamic>, startIndex:Float, length:Float):Dynamic;
	
	/**
	 * Removes a random object from the given array and returns it.
	 * Will return null if random selection is missing, or array has no entries.
	 */
	function removeRandom (objects:Array<Dynamic>, startIndex:Float, length:Float):Dynamic;
	
	/**
	 * Round down to the next whole number. E.g. floor(1.7) == 1, and floor(-2.7) == -2.
	 */
	function floor (Value:Float):Float;
	
	/**
	 * Round up to the next whole number.  E.g. ceil(1.3) == 2, and ceil(-2.3) == -3.
	 */
	function ceil (value:Float):Float;
	
	/**
	 * Generate a sine and cosine table simultaneously and extremely quickly. Based on research by Franky of scene.at
	 * 
	 * 
	 * The parameters allow you to specify the length, amplitude and frequency of the wave. Once you have called this function
	 * you should get the results via getSinTable() and getCosTable(). This generator is fast enough to be used in real-time.
	 * 
	 */
	function sinCosGenerator (length:Float, sinAmplitude:Float, cosAmplitude:Float, frequency:Float):Array<Dynamic>;
	
	/**
	 * Removes the top element from the stack and re-inserts it onto the bottom, then returns it.
	 * The original stack is modified in the process. This effectively moves the position of the data from the start to the end of the table.
	 */
	function shift (stack:Array<Dynamic>):Dynamic;
	
	/**
	 * Shuffles the data in the given array into a new order
	 */
	function shuffleArray (array:Array<Dynamic>):Array<Dynamic>;
	
	/**
	 * Returns the distance between the two given set of coordinates.
	 */
	function distance (x1:Float, y1:Float, x2:Float, y2:Float):Float;
	
	/**
	 * Returns the distance between the two given set of coordinates at the power given.
	 */
	function distancePow (x1:Float, y1:Float, x2:Float, y2:Float, ?pow:Float = 2):Float;
	
	/**
	 * Returns the rounded distance between the two given set of coordinates.
	 */
	function distanceRounded (x1:Float, y1:Float, x2:Float, y2:Float):Float;
	
	/**
	 * Force a value within the boundaries of two values.
	 * Clamp value to range <a, b>
	 */
	function clamp (x:Float, a:Float, b:Float):Float;
	
	/**
	 * Clamp value to range <a, inf).
	 */
	function clampBottom (x:Float, a:Float):Float;
	
	/**
	 * Checks if two values are within the given tolerance of each other.
	 */
	function within (a:Float, b:Float, tolerance:Float):Bool;
	
	/**
	 * Linear mapping from range <a1, a2> to range <b1, b2>
	 */
	function mapLinear (x:Float, a1:Float, a2:Float, b1:Float, b2:Float):Float;
	
	/**
	 * Smoothstep function as detailed at <a href='http://en.wikipedia.org/wiki/Smoothstep'>http://en.wikipedia.org/wiki/Smoothstep</a>
	 */
	function smoothstep (x:Float, min:Float, max:Float):Float;
	
	/**
	 * Smootherstep function as detailed at <a href='http://en.wikipedia.org/wiki/Smoothstep'>http://en.wikipedia.org/wiki/Smoothstep</a>
	 */
	function smootherstep (x:Float, min:Float, max:Float):Float;
	
	/**
	 * A value representing the sign of the value.
	 * -1 for negative, +1 for positive, 0 if value is 0
	 */
	function sign (x:Float):Float;
	
	/**
	 * Convert degrees to radians.
	 */
	function degToRad ():Dynamic;
	
	/**
	 * Convert degrees to radians.
	 */
	function radToDeg ():Dynamic;
	
}
