package esri;

import js.Dom;
/* <i>Class added v2.3</i><br/><pre class='prettyprint'>
        dojo.require("esri.SnappingManager");</pre> The SnappingManager
        is used to add snapping capability to the Editor, Measurement Widget, Draw
        toolbar and Edit toolbar.*/
@native ("esri.SnappingManager")
extern class SnappingManager {


	/* Destroy the SnappingManager object. All related objects will be set to
            null.*/
	public function destroy():Void;

	/* Returns a deferred object, which can be added to a callback to find the
            snap point.*/
	public function getSnappingPoint(screenPoint:esri.geometry.Point):Dynamic;

	/* An array of layerInfo objects used to specify the target snapping layers.*/
	public function setLayerInfos(setLayerInfos:Array <Dynamic>):Void;
	function new(?options:Dynamic):Void;
}