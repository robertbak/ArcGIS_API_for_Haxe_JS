package esri.renderer;

import js.Dom;
/* <i>Class added v2.0.</i><br/><br/> Time class
        breaks ager displays aging by classifying features based on an age range.*/
@native ("esri.renderer.TimeClassBreaksAger")
extern class TimeClassBreaksAger {
	/* Time breaks are measured in days.*/
	public static var UNIT_DAYS:String;
	/* Time breaks are measured in hours.*/
	public static var UNIT_HOURS:String;
	/* Time breaks are measured in milliseconds.*/
	public static var UNIT_MILLISECONDS:String;
	/* Time breaks are measured in minutes.*/
	public static var UNIT_MINUTES:String;
	/* Time breaks are measured in months.*/
	public static var UNIT_MONTHS:String;
	/* Time breaks are measured in seconds.*/
	public static var UNIT_SECONDS:String;
	/* Time breaks are measured in weeks.*/
	public static var UNIT_WEEKS:String;
	/* Time breaks are measured in years.*/
	public static var UNIT_YEARS:String;


	/* Calculates aging and returns the appropriate symbol. See the <a href="symbolager.htm">SymbolAger</a>
            class for details.*/
	public function getAgedSymbol(symbol:esri.symbol.Symbol,graphic:esri.Graphic):esri.symbol.Symbol;
	function new(infos:Array <Dynamic>):Void;
}