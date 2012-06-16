package esri.toolbars;

import js.Dom;
/* <pre class='prettyprint'> dojo.require("esri.toolbars.draw");</pre><p>Toolbar
        that supports functionality to create new geometries by drawing them: points
        (POINT or MULTI_POINT), lines (LINE, POLYLINE, or FREEHAND_POLYLINE), polygons
        (FREEHAND_POLYGON or POLYGON), or rectangles (EXTENT). To edit geometries
        of existing graphics, use the <a href="Edit.htm">Edit Toolbar.</a></p>
        <p>Mouse behavior when drawing features</p> <ul> <li>For
        POINT, click to add a point.</li> <li>For MULTI_POINT, click
        to add points, double-click to add the last point of the multi-point.</li>
        <li>For POLYLINE and POLYGON, click to add vertices, double-click
        to add the last vertex.</li> <li>For FREEHAND_POLYLINE and
        FREEHAND_POLYGON, press mouse down where to start, draw the feature, then
        let go when finished drawing.</li> <li>For LINE, EXTENT, press
        mouse down where to start and let go where to end the feature.</li>
        </ul>*/
@native ("esri.toolbars.Draw")
extern class Draw {
	/* Draws an arrow.*/
	public static var ARROW:String;
	/* Draws a circle.*/
	public static var CIRCLE:String;
	/* Draws an arrow that points down.*/
	public static var DOWN_ARROW:String;
	/* Draws an ellipse.*/
	public static var ELLIPSE:String;
	/* Draws an extent box.*/
	public static var EXTENT:String;
	/* Draws a freehand polygon.*/
	public static var FREEHAND_POLYGON:String;
	/* Draws a freehand polyline.*/
	public static var FREEHAND_POLYLINE:String;
	/* Draws an arrow that points left.*/
	public static var LEFT_ARROW:String;
	/* Draws a line.*/
	public static var LINE:String;
	/* Draws a Multipoint.*/
	public static var MULTI_POINT:String;
	/* Draws a point.*/
	public static var POINT:String;
	/* Draws a polygon.*/
	public static var POLYGON:String;
	/* Draws a polyline.*/
	public static var POLYLINE:String;
	/* Draws a rectangle.*/
	public static var RECTANGLE:String;
	/* Draws an arrow that points right.*/
	public static var RIGHT_ARROW:String;
	/* Draws a triangle.*/
	public static var TRIANGLE:String;
	/* Draws an arrow that points up.*/
	public static var UP_ARROW:String;
	/* Symbol to be used when drawing a <a href="polygon.htm">Polygon</a>
            or <a href="extent.htm">Extent</a>.*/
	public var fillSymbol:esri.symbol.SimpleFillSymbol;
	/* Symbol to be used when drawing a <a href="polyline.htm">Polyline</a>.*/
	public var lineSymbol:esri.symbol.SimpleLineSymbol;
	/* Symbol to be used when drawing a <a href="point.htm">Point</a>
            or <a href="multipoint.htm">Multipoint</a>.*/
	public var markerSymbol:esri.symbol.SimpleMarkerSymbol;
	/* When set to false, the geometry is modified to be topologically correct.
            When set to true, the input geometry is not modified. <br/>Known
            values: true | false*/
	public var respectDrawingVertexOrder:Bool;


	/* Activates the toolbar for drawing geometries. Activating the toolbar disables
            map navigation.*/
	public function activate(geometryType:String,?options:Dynamic):Void;

	/* Deactivates the toolbar and reactivates map navigation.*/
	public function deactivate():Void;

	/* Finishes drawing the geometry and fires the onDrawEnd event. Use this
            method to finish drawing a polyline, polygon or multipoint when working
            with the compact build on a touch supported device like the iPhone.*/
	public function finishDrawing():Void;

	/* Sets the fill symbol.*/
	public function setFillSymbol(fillSymbol:esri.symbol.FillSymbol):Void;

	/* Sets the line symbol.*/
	public function setLineSymbol(lineSymbol:esri.symbol.LineSymbol):Void;

	/* Sets the marker symbol.*/
	public function setMarkerSymbol(markerSymbol:esri.symbol.MarkerSymbol):Void;

	/* Sets whether the polygon geometry should be modified to be topologically
            correct.*/
	public function setRespectDrawingVertexOrder(set:Bool):Void;
	function new(map:esri.Map,options:Dynamic):Void;
}