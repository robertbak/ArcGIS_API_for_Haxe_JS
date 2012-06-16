package esri.layers;

import js.Dom;
/* An <a href="arcgistiledmapservicelayer.htm">ArcGISTiledMapServiceLayer</a>
        has a number of LODs (Levels of Detail). Each LOD corresponds to a map
        at a given scale or resolution.<!--***--> LOD has no constructor.*/
@native ("esri.layers.LOD")
extern class LOD {
	/* ID for each level. The top most level is 0. The ID is returned in <a
            href="map.htm#getLevel">Map.getLevel()</a> and set in
            <a href="map.htm#setLevel">Map.setLevel()</a>.*/
	public var level:Float;
	/* Resolution in map units of each pixel in a tile for each level.*/
	public var resolution:Float;
	/* Scale for each level.*/
	public var scale:Float;

}