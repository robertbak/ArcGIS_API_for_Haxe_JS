package esri.renderer;

import js.Dom;
/* <i>Class added v1.4.</i><br/><pre class='prettyprint'>dojo.require("esri.renderer");</pre><br/>
        Base class for the renderers - SimpleRenderer, ClassBreaksRenderer, UniqueValueRenderer.
        The base class for all renderers used with a <a href="graphicslayer.htm">GraphicsLayer</a>.
        Renderer has no constructor. Use <a href="simplerenderer.htm">SimpleRenderer</a>,
        <a href="classbreaksrenderer.htm">ClassBreaksRenderer</a>,
        or <a href="uniquevaluerenderer.htm">UniqueValueRenderer</a>.*/
@native ("esri.renderer.Renderer")
extern class Renderer {
	/* Default symbol used when a value or break cannot be matched.*/
	public var defaultSymbol:esri.symbol.Symbol;


	/* Gets the symbol for the Graphic.*/
	public function getSymbol(graphic:esri.Graphic):esri.symbol.Symbol;

	/* Converts object to its ArcGIS Server JSON representation. Not supported
              for the TemporalRenderer.*/
	public function toJson():Dynamic;
}