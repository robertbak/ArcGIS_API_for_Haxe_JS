package esri.renderer;

import js.Dom;
/* <i>Class added v2.0.</i><br/><br/>Temporal renderers
        provide time-based rendering of features in a feature layer. It can be
        useful to visualize historic or real-time data such as earthquake or hurricane
        occurrences. You can use a temporal renderer to define how observations
        (regular, historic, latest) and tracks are rendered. You can also show
        aging of features with respect to the map's time extent.*/
@native ("esri.renderer.TemporalRenderer")
extern class TemporalRenderer {


	/* Returns the symbol used to render the graphic.*/
	public function getSymbol(graphic:esri.Graphic):esri.symbol.Symbol;
	function new(observationRenderer:esri.renderer.Renderer,?latestObservationRenderer:esri.renderer.Renderer,?trackRenderer:esri.renderer.Renderer,?observationAger:esri.renderer.SymbolAger):Void;
}