package esri.toolbars;

import js.Dom;
/* <pre class='prettyprint'>dojo.require("esri.toolbars.navigation");</pre><br/>Toolbar
        that supports basic navigation such as pan and zoom.*/
@native ("esri.toolbars.Navigation")
extern class Navigation {
	/* Map is panned.*/
	public static var PAN:String;
	/* Map zooms in.*/
	public static var ZOOM_IN:String;
	/* Map zooms out.*/
	public static var ZOOM_OUT:String;


	/* Activates the toolbar for map navigation. Activating the toolbar overrides
            default map navigation.*/
	public function activate(navType:String):Void;

	/* Deactivates the toolbar and reactivates map navigation.*/
	public function deactivate():Void;

	/* When "true", map is at the first extent.*/
	public function isFirstExtent():Bool;

	/* When "true", map is at the last extent.*/
	public function isLastExtent():Bool;

	/* Set the SimpleFillSymbol used for the rubber band zoom.*/
	public function setZoomSymbol(symbol:esri.symbol.Symbol):Void;

	/* Zoom to full extent of base layer.*/
	public function zoomToFullExtent():Void;

	/* Zoom to next extent in extent history.*/
	public function zoomToNextExtent():Void;

	/* Zoom to previous extent in extent history.*/
	public function zoomToPrevExtent():Void;
	function new(map:esri.Map):Void;
}