package esri;

import js.Dom;
/* The spatial reference of a map, layer, or inputs to and outputs from a
        task. Each projected and geographic coordinate system is defined by both
        a well-known ID (WKID) or a definition string (WKT). Note that pre 10 only
        wkid was supported. For a complete list of supported IDs and their corresponding
        definition strings, see: <UL> <li><a target="_blank"
        href="http://help.arcgis.com/en/arcgisserver/10.0/apis/rest/pcs.html">Projected
        Coordinate Systems Listing</a></li> <li><a target="_blank"
        href="http://help.arcgis.com/en/arcgisserver/10.0/apis/rest/gcs.html">Geographic
        Coordinate Systems Listing</a></li> </UL>*/
@native ("esri.SpatialReference")
extern class SpatialReference {
	/* The well-known ID of a spatial reference. See <a href="../jshelp/pcs.htm">Projected
            Coordinate Systems</a> and <a href="../jshelp/gcs.htm">Geographic
            Coordinate Systems</a> for the list of supported spatial references.*/
	public var wkid:Float;
	/* The well-known text that defines a spatial reference. Many browser have
            a limit to the length of a GET request of approximately 2048 characters.
            When using well-known text to specify the spatial reference you can easily
            exceed this limit. In these cases, you will need to setup and use a proxy
            page.*/
	public var wkt:String;


	/* Returns an easily serializable object representation of the spatial reference.*/
	public function toJson():Dynamic;
	function new(json:Dynamic):Void;
}