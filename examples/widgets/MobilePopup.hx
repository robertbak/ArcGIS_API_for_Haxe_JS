package examples.widgets;
import esri.dijit.PopupMobile;
import esri.esri.arcgis.Utils;
import esri.Map;

/**
 * ...
 * @author 
 */

class MobilePopup 
{

	static public var popup:PopupMobile;
	var map:Map;
	
	public function init() 
	{
		popup = new PopupMobile(null, Dojo.create("div"));			
		var mapOptions:NewMapOptions = new NewMapOptions();
		mapOptions.slider = true;
		mapOptions.nav = false;
		mapOptions.wrapAround180 = true;
		mapOptions.infoWindow = popup;
		mapOptions.showInfoWindowOnClick = false;
		
		// TODO: This is based on Dynamic, should be typed
		var mapDeferred = Utils.createMap("661826977c5948eca3c55276fa1b0960", "map", { mapOptions:mapOptions} );
		mapDeferred.addCallback(mapDefferedCallback);
		mapDeferred.addErrback(mapDefferedCallback);
	}

	private function mapDefferedCallback(response) {
			map = response.map;
			map.setExtent(new esri.geometry.Extent( { "xmin": -52909106.87506947, "ymin":935889.3196982983, "xmax": -40483503.557034515, "ymax":7451993.106951275, "spatialReference": { "wkid":102100 }} ));
	}
	private function mapDefferedError(error) {
			trace ("Map creation failed: " + Dojo.toJson(error));
	}
	
	public function new() 
	{		
	  Dojo.require("dijit.layout.BorderContainer");
      Dojo.require("dijit.layout.ContentPane");
      Dojo.require("esri.map");
      Dojo.require("esri.arcgis.utils");
      Dojo.require("esri.dijit.PopupMobile");
	  Dojo.addOnLoad(init);
	}
	
	static function main() 
	{
		new Bookmarks_Read_Only();		
	}
	
}