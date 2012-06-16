package esri.symbol;

import js.Dom;
/* Line symbols are used to draw linear features on the graphics layer. <br
        /><br /> LineSymbol has no constructor. Use <a href="simplelinesymbol.htm">SimpleLineSymbol</a>
        or <a href="cartographiclinesymbol.htm">CartographicLineSymbol</a>.*/
@native ("esri.symbol.LineSymbol")
extern class LineSymbol extends esri.symbol.Symbol  {
	/* Width of line symbol in pixels.*/
	public var width:Float;


	/* Sets the LineSymbol width.*/
	public function setWidth(width:Float):esri.symbol.LineSymbol;
}