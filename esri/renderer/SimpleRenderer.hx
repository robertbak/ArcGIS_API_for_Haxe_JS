package esri.renderer;

import js.Dom;
/* <i>Class added v1.4.</i><br/><br/> A renderer
        that uses one symbol only. For more information about renderers, see <a
        href="../jshelp/inside_renderers.htm">Symbolizing graphics
        with renderers</a>.*/
@native ("esri.renderer.SimpleRenderer")
extern class SimpleRenderer extends esri.renderer.Renderer  {
	/* Description for the renderer.*/
	public var description:String;
	/* Label for the renderer.*/
	public var label:String;
	/* The symbol for the renderer.*/
	public var symbol:esri.symbol.Symbol;

	function new(defaultSymbol:esri.symbol.Symbol):Void;
}