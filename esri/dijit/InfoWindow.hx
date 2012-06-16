package esri.dijit;

import js.Dom;
/* <pre class='prettyprint'>dojo.require("esri.dijit.InfoWindow");</pre><br/>An
        InfoWindow is an HTML popup. It often contains the attributes of a <a
        href="graphic.htm">Graphic</a>. The default behavior
        on a Graphic is to show the InfoWindow after a click on the Graphic. An
        <a href="infotemplate.htm">InfoTemplate</a> is required
        for this default behavior. In addition, the InfoWindow can be used to display
        custom content on the map.*/
@native ("esri.dijit.InfoWindow")
extern class InfoWindow {
	/* InfoWindow is anchored to the lower left of the point.*/
	public static var ANCHOR_LOWERLEFT:String;
	/* InfoWindow is anchored to the lower right of the point.*/
	public static var ANCHOR_LOWERRIGHT:String;
	/* InfoWindow is anchored to the upper left of the point.*/
	public static var ANCHOR_UPPERLEFT:String;
	/* InfoWindow is anchored to the upper right of the point.*/
	public static var ANCHOR_UPPERRIGHT:String;
	/* Placement of the InfoWindow with respect to the graphic. See the Constants
            table for values.*/
	public var anchor:String;
	/* The anchor point of the InfoWindow in screen coordinates.*/
	public var coords:esri.geometry.Point;
	/* InfoWindow always show with the specified anchor. See the Constants table
            for values.*/
	public var fixedAnchor:String;
	/* Determines whether the InfoWindow is currently shown on the map. <br/>Known
            values: true | false*/
	public var isShowing:Bool;


	/* Hides the InfoWindow.*/
	public function hide():Void;

	/* Moves the InfoWindow to the specified screen point.*/
	public function move(point:esri.geometry.Point):Void;

	/* Resizes the InfoWindow to the specified height and width in pixels.*/
	public function resize(width:Float,height:Float):Void;

	/* Sets the content in the InfoWindow. View the <a href="../jshelp_start.htm#jshelp/intro_formatinfowindow.htm">Format
            Info Window Content</a> help topic for more details.</P>*/
	public function setContent(content:Dynamic):esri.dijit.InfoWindow;

	/* Sets the fixed location of the InfoWindow anchor. Valid values are listed
            in the Constants table.*/
	public function setFixedAnchor(anchor:String):Void;

	/* Sets the title for the InfoWindow. View the <a href="../jshelp_start.htm#jshelp/intro_formatinfowindow.htm">Format
            Info Window Content</a> help topic for more details.</P>*/
	public function setTitle(title:String):esri.dijit.InfoWindow;

	/* Display the InfoWindow at the specified location. Placement can be specified
            with respect to the location i.e., place the window at the location's
            upper-right corner. If placment is not specified the info window places
            the window to avoid falling off the map edge.*/
	public function show(point:esri.geometry.Point,?placement:String):Void;
}