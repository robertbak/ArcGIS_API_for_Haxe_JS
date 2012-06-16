package esri.dijit;

import js.Dom;
/* <i>Class added v2.1</i> <br/> <pre class='prettyprint'>
        dojo.require("esri.dijit.BasemapGallery"); </pre> <br/>
        <p> The BasemapGallery dijit displays a collection basemaps from
        ArcGIS.com or a user-defined set of map or image services. When a new basemap
        is selected from the BasemapGallery the basemap layers are removed from
        the map and the new layers are added. </p> <p> All basemaps
        added to the gallery need to have the same spatial reference. If the default
        ArcGIS.com basemaps are used then all additional items added to the gallery
        need to be in Web Mercator (wkids: 102100, 102113 and 3857). If the default
        basemaps are not used you can add basemaps in any spatial reference as
        long as all the items added to the gallery share that spatial reference.
        To achieve the best performance, it is recommended that all basemaps added
        to the gallery are cached (tiled) layers. </p>*/
@native ("esri.dijit.BasemapGallery")
extern class BasemapGallery {
	/* List of basemaps displayed in the BasemapGallery. The list contains basemaps
            added using the basemaps constructor option and if <code>showArcGISBasemaps</code>
            is true ArcGIS.com basemaps are also included.*/
	public var basemaps:Array <esri.dijit.Basemap>;
	/* This value is true after the BasemapGallery retrieves the ArcGIS.com basemaps.
            If <code>showArcGISBasemaps</code> is false the loaded property
            is set to true immediately.*/
	public var loaded:Bool;


	/* Add a new basemap to the BasemapGallery's list of basemaps. Returns
            true if the basemap is successfully added and false if the item was not
            added, e.g. if the id is already in the list of basemaps.*/
	public function add(basemap:esri.dijit.Basemap):Bool;

	/* Destroys the basemap gallery. Call destroy() when the widget is no longer
            needed by the application.*/
	public function destroy():Void;

	/* Return the basemap with the specified id. Returns null if a basemap with
            the specified id is not found.*/
	public function get(id:String):esri.dijit.Basemap;

	/* Gets the currently selected basemap. Returns null if the map is displaying
            a basemap that is not from the BasemapGallery.*/
	public function getSelected():esri.dijit.Basemap;

	/* Remove a basemap from the BasemapGallery's list of basemaps. Returns
            null if a basemap with the specified id is not found.*/
	public function remove(id:String):esri.dijit.Basemap;

	/* Select a new basemap for the map. The map refreshes to display the new
            basemap. Returns null if a basemap with the specified id is not found.*/
	public function select(id:String):esri.dijit.Basemap;

	/* Finalizes the creation of the basemap gallery. Call startup() after creating
            the widget when you are ready for user interaction. Startup is only required
            when a srcNodeRef is provided in the BasemapGallery constructor.*/
	public function startup():Void;
	function new(params:Dynamic,?srcNodeRef:String):Void;
}