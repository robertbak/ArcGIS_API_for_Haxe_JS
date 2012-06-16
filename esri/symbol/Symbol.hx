package esri.symbol;

import js.Dom;
/* <pre class='prettyprint'>dojo.require("esri.symbol");</pre><br/>Symbols
        are used to display points, lines, and polygons on the graphics layer.
        <br /><br /> Symbol is the base symbol class and has no constructor.
        Instead, use the following: <ul> <li><b>Points:</b>&nbsp;&nbsp;<a
        href="simplemarkersymbol.htm">SimpleMarkerSymbol</a>,
        <a href="picturemarkersymbol.htm">PictureMarkerSymbol</a></li>
        <li><b>Lines:</b>&nbsp;&nbsp;<a href="simplelinesymbol.htm">SimpleLineSymbol</a>,
        <a href="cartographiclinesymbol.htm">CartographicLineSymbol</a></li>
        <li><b>Polygons:</b>&nbsp;&nbsp;<a href="simplefillsymbol.htm">SimpleFillSymbol</a>,
        <a href="picturefillsymbol.htm">PictureFillSymbol</a></li>
        <li><b>Text:</b>&nbsp;&nbsp;<a href="textsymbol.htm">TextSymbol</a>,
        <a href="font.htm">Font</a></li> </ul>*/
@native ("esri.symbol.Symbol")
extern class Symbol {
	/* Symbol color, which is based on <a href="http://redesign.dojotoolkit.org/jsdoc/dojo/HEAD/dojo.Color"
            target="_blank">dojo.Color</a>. Colors can be denoted
            in the following formats:<br/><br/> <ul> <li>R,
            G, B: <code>new dojo.Color([255,0,0])</code> </li> <li>R,G,B,A.
            The "A" value represents transparency where 0.0 is fully transparent
            and 1.0 has no transparency: <code>new dojo.Color([255,0,0,0.25])</code>
            </li> <li>Hex string: <code>new dojo.Color("#C0C0C0")</code>
            </li> <li>Named string: <code>new dojo.Color("blue")</code>
            </li> </ul>*/
	public var color:Dynamic;
	/* The type of symbol. <br/>Known values: simplemarkersymbol | picturemarkersymbol
            | simplelinesymbol | cartographiclinesymbol | simplefillsymbol | picturefillsymbol
            | textsymbol*/
	public var type:String;


	/* Sets the symbol color.*/
	public function setColor(color:Dynamic):esri.symbol.Symbol;

	/* Converts object to its ArcGIS Server JSON representation.*/
	public function toJson():Dynamic;
}