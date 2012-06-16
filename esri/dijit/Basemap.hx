package esri.dijit;

import js.Dom;
/* <i>Class added v2.1.</i><br/><p></p> Define
        a basemap to display in the BasemapGallery dijit.*/
@native ("esri.dijit.Basemap")
extern class Basemap {
	/* The basemap's id.*/
	public var id:String;
	/* The URL to the thumbnail image for the basemap.*/
	public var thumbnailUrl:String;
	/* The title for the basemap.*/
	public var title:String;


	/* The list of layers contained in the basemap or a dojo.Deferred if a call
            to ArcGIS.com needs to be made to retrieve the list of ArcGIS.com basemaps.*/
	public function getLayers():Array <esri.dijit.BasemapLayer>;
	function new(?params:Dynamic):Void;
}