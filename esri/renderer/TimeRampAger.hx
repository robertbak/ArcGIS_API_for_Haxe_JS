package esri.renderer;

import js.Dom;
/* <i>Class added v2.0.</i><br/><br/> Time ramp agers
        display aging using a gradual change in symbology. A range of colors and
        symbol sizes can be specified.*/
@native ("esri.renderer.TimeRampAger")
extern class TimeRampAger {


	/* Calculates aging and returns the appropriate symbol. See the <a href="symbolager.htm">SymbolAger</a>
            class for details.*/
	public function getAgedSymbol(symbol:esri.symbol.Symbol,graphic:esri.Graphic):esri.symbol.Symbol;
	function new(?colorRange:Dynamic,?sizeRange:Array <Float>):Void;
}