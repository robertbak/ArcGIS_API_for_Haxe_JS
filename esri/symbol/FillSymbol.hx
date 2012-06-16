package esri.symbol;

import js.Dom;
/* Fill symbols are used to draw polygon features on the graphics layer.
        Fills can be specified as solid, hatched, or pictures. In addition, the
        symbol can have an optional outline, which is defined by a line symbol.
        <br /><br /> FillSymbol has no constructor. Use <a href="simplefillsymbol.htm">SimpleFillSymbol</a>
        or <a href="picturefillsymbol.htm">PictureFillSymbol</a>.*/
@native ("esri.symbol.FillSymbol")
extern class FillSymbol extends esri.symbol.Symbol  {
	/* Outline of the polygon.*/
	public var outline:esri.symbol.SimpleLineSymbol;


	/* Sets the outline of the fill symbol.*/
	public function setOutline(outline:esri.symbol.SimpleLineSymbol):esri.symbol.FillSymbol;
}