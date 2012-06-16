package ;

import esri.dijit.Editing;
import examples.WorldTopographicMap;


import esri.esri.arcgis.Utils;
import esri.esri.Tasks;
import esri.Geometry;
import esri.Layers;
import esri.Renderer;
import esri.Symbol;
import esri.Tasks;
import esri.Toolbars;
import esri.Virtualearth;
import esri.Dijit;
import esri.Map;
import esri.layers.Layer;
import esri.layers.MapImage;
import esri.layers.GraphicsLayer;
import esri.layers.DynamicMapServiceLayer;
import esri.layers.ArcGISTiledMapServiceLayer;
import esri.layers.ArcGISDynamicMapServiceLayer;
import esri.Graphic;
import esri.geometry.Geometry;
import esri.geometry.Point;
import esri.geometry.Extent;
import esri.geometry.Polyline;
import esri.geometry.Polygon;
import esri.symbol.Symbol;
import esri.symbol.MarkerSymbol;
import esri.symbol.LineSymbol;
import esri.symbol.PictureMarkerSymbol;
import esri.symbol.SimpleFillSymbol;
import esri.symbol.FillSymbol;
import esri.symbol.SimpleLineSymbol;
import esri.layers.ImageParameters;
import esri.InfoTemplate;
import esri.layers.LayerInfo;
import esri.symbol.SimpleMarkerSymbol;
import esri.tasks.AddressCandidate;
import esri.tasks.DataFile;
import esri.tasks.FindParameters;
import esri.tasks.FindTask;
import esri.tasks.Geoprocessor;
import esri.tasks.IdentifyParameters;
import esri.tasks.FindResult;
import esri.tasks.FeatureSet;
import esri.tasks.IdentifyResult;
import esri.tasks.IdentifyTask;
import esri.tasks.JobInfo;
import esri.tasks.LinearUnit;
import esri.tasks.Locator;
import esri.tasks.ParameterValue;
import esri.tasks.Query;
import esri.tasks.QueryTask;
import esri.tasks.RasterData;
import esri.SpatialReference;
import esri.layers.LOD;
import esri.symbol.CartographicLineSymbol;
import esri.geometry.Multipoint;
import esri.tasks.GeometryService;
import esri.toolbars.Draw;
import esri.toolbars.Navigation;
import esri.tasks.GPMessage;
import esri.dijit.InfoWindow;
import esri.tasks.BufferParameters;
import esri.symbol.PictureFillSymbol;
import esri.symbol.TextSymbol;
import esri.symbol.Font;
import esri.tasks.Date;
import esri.layers.TiledMapServiceLayer;
import esri.layers.ArcGISImageServiceLayer;
import esri.layers.ImageServiceParameters;
import esri.layers.TileInfo;
import esri.renderer.Renderer;
import esri.virtualearth.VETiledLayer;
import esri.renderer.SimpleRenderer;
import esri.renderer.UniqueValueRenderer;
import esri.renderer.ClassBreaksRenderer;
import esri.virtualearth.VEGeocoder;
import esri.virtualearth.VEGeocodeResult;
import esri.virtualearth.VEAddress;
import esri.tasks.NAOutputLine;
import esri.tasks.NAUTurn;
import esri.tasks.RouteParameters;
import esri.tasks.DataLayer;
import esri.tasks.RouteTask;
import esri.tasks.RouteResult;
import esri.tasks.DirectionsFeatureSet;
import esri.Units;
import esri.layers.FeatureLayer;
import esri.layers.FeatureType;
import esri.layers.Field;
import esri.layers.Domain;
import esri.layers.RangeDomain;
import esri.layers.CodedValueDomain;
import esri.layers.FeatureEditResult;
import esri.tasks.AreasAndLengthsParameters;
import esri.tasks.LengthsParameters;
import esri.tasks.RelationParameters;
import esri.TimeExtent;
import esri.layers.TimeReference;
import esri.layers.LayerTimeOptions;
import esri.layers.TimeInfo;
import esri.layers.FeatureTemplate;
import esri.tasks.RelationshipQuery;
import esri.toolbars.Edit;
import esri.dijit.AttributeInspector;
import esri.dijit.editing.TemplatePicker;
import esri.dijit.editing.Editor;
import esri.dijit.TimeSlider;
import esri.tasks.DistanceParameters;
import esri.tasks.GeneralizeParameters;
import esri.tasks.OffsetParameters;
import esri.tasks.TrimExtendParameters;
import esri.dijit.editing.AttachmentEditor;
import esri.tasks.NAMessage;
import esri.esri.tasks.ClosestFacilityParameters;
import esri.tasks.ClosestFacilityTask;
import esri.tasks.ClosestFacilitySolveResult;
import esri.tasks.ServiceAreaParameters;
import esri.tasks.ServiceAreaTask;
import esri.tasks.ServiceAreaSolveResult;
import esri.layers.MosaicRule;
import esri.layers.RasterFunction;
import esri.renderer.TemporalRenderer;
import esri.renderer.SymbolAger;
import esri.renderer.TimeRampAger;
import esri.renderer.TimeClassBreaksAger;
import esri.tasks.NAOutputPolygon;
import esri.tasks.NATravelDirection;
import esri.dijit.OverviewMap;
import esri.layers.InheritedDomain;
import esri.layers.OpenStreetMapLayer;
import esri.tasks.ImageServiceIdentifyTask;
import esri.tasks.ImageServiceIdentifyParameters;
import esri.tasks.ImageServiceIdentifyResult;
import esri.dijit.BasemapGallery;
import esri.dijit.BasemapLayer;
import esri.dijit.Legend;
import esri.dijit.Scalebar;
import esri.layers.WMSLayer;
import esri.layers.WMSLayerInfo;
import esri.dijit.Basemap;
import esri.InfoWindowBase;
import esri.UndoManager;
import esri.OperationBase;
import esri.dijit.editing.Add;
import esri.dijit.editing.Delete;
import esri.dijit.editing.Update;
import esri.dijit.editing.Cut;
import esri.dijit.editing.Union;
import esri.dijit.Gallery;
import esri.dijit.Measurement;
import esri.SnappingManager;
import esri.dijit.Popup;
import esri.dijit.PopupTemplate;
import esri.layers.WMTSLayer;
import esri.layers.WMTSLayerInfo;
import esri.dijit.PopupMobile;
import esri.layers.KMLLayer;
import esri.layers.KMLFolder;
import esri.layers.MapImageLayer;
import esri.layers.KMLGroundOverlay;
import esri.Credential;
import esri.dijit.Bookmarks;
import esri.IdentityManagerBase;
import esri.IdentityManager;
import esri.ServerInfo;
import esri.dijit.BookmarkItem;
import esri.tasks.StatisticDefinition;
import esri.tasks.GenerateRendererTask;
import esri.tasks.GenerateRendererParameters;
import esri.tasks.ClassificationDefinition;
import esri.tasks.ClassBreaksDefinition;
import esri.tasks.UniqueValueDefinition;
import esri.tasks.AlgorithmicColorRamp;
import esri.tasks.MultipartColorRamp;
import esri.dijit.Print;
import esri.tasks.PrintTask;
import esri.tasks.PrintParameters;
import esri.tasks.PrintTemplate;
import esri.layers.DynamicLayerInfo;
import esri.layers.LayerMapSource;
import esri.layers.LayerDataSource;
import esri.layers.TableDataSource;
import esri.layers.QueryDataSource;
import esri.layers.JoinDataSource;
import esri.layers.RasterDataSource;
import esri.layers.LayerDrawingOptions;
import esri.Map;
import esri.SpatialReference;
import js.Lib;

/**
 * ...
 * @author 
 */

class Main 
{
	public function new():Void {
	
	}
	
	
	public static function initMap():Void {
		var s = untyped __js__('esri.config.defaults.io.proxyUrl = "http://localhost/esri/proxy.php"');
		var startExtent:Extent = new Extent(8.749355, 47.378793, 28.351579, 57.282046,
        new SpatialReference( { wkid:4326 } ) );
		var map:Map = new Map("mapDiv" , { extent: startExtent, logo:false } );
		
		var layer = new ArcGISTiledMapServiceLayer("http://server.arcgisonline.com/ArcGIS/rest/services/ESRI_StreetMap_World_2D/MapServer");
		var layer2 = new WMSLayer("http://ikar2.pgi.gov.pl/services/CBDG_JASKINIE/MapServer/WMSServer", {  visibleLayers: ['1', '2', '3', '5', '6'] } );
		map.addLayer(layer);
		map.addLayer(layer2);
	

	}
	static function main() 
	{
		new WorldTopographicMap();
		/*
		Dojo.require("esri.map");
		Dojo.require("esri.layers.wms");
		Dojo.addOnLoad(initMap);
		*/
	}
	
}