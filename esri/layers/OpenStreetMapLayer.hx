package esri.layers;

import js.Dom;
/* <i>Class added v2.0.</i><br/> <pre class='prettyprint'>dojo.require("esri.layers.osm");</pre><br
        /><br />Allows you to use basemaps from <a href="http://www.openstreetmap.org/"
        target="_blank"> OpenStreetMap</a> . Set the tileservers
        property to change which OpenStreetMap tiles you want to use.*/
@native ("esri.layers.OpenStreetMapLayer")
extern class OpenStreetMapLayer {

	function new(?options:Dynamic):Void;
}