package esri.dijit;

import js.Dom;
/* <i>Class added v2.1</i><br/><pre class='prettyprint'>dojo.require("esri.dijit.Scalebar");</pre><br/><p>The
        scalebar widget displays a scalebar on the map or in a specified HTML node.
        The widget respects various coordinate systems and displays units in english
        or metric values. When working with Web Mercator or geographic coordinate
        systems the scalebar takes into account projection distortion and dynamically
        adjusts the scalebar. The <a href="../../demos/widget/widget_scalebar.html"
        target="_blank">Scalebar</a> sample, which uses a map
        using the Web Mercator projection, shows this behavior. Open the sample
        and note that as you pan the map south towards the equator the scalebar
        gets shorter and as you pan north it gets longer. </p> <p>The
        location of the scalebar is used to calculate the scale, when the scalebar
        is positioned outside the map div the following values are used: <ul>
        <li>If the scalebar is above the map, the upper border of the map
        is used.</li> <li>If the scalebar is below the map, the lower
        border of the map is used.</li> <li>If the scalebar is positioned
        next to the map its vertical location is used.</li> </ul> </p>*/
@native ("esri.dijit.Scalebar")
extern class Scalebar {


	/* Destroy the scalebar. Call this method when the scalebar is no longer
            needed by the application.*/
	public function destroy():Void;

	/* Hide the scalebar dijit.*/
	public function hide():Void;

	/* Set the scalebar's visibility to true. This method only applies if
            the scalebar has been hidden using scalebar.hide.*/
	public function show():Void;
	function new(params:Dynamic,?srcNodeRef:String):Void;
}