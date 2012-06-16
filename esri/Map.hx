package esri;

import esri.geometry.Extent;
import esri.layers.LOD;
import js.Dom;
/* <pre class='prettyprint'>dojo.require("esri.map");</pre><br
        />The esri.Map class creates a container and required DOM structure
        for adding <a href="layer.htm">layers</a>, <a
        href="graphic.htm">graphics</a>, an <a href="infowindow.htm">info
        window</a>, and other navigation controls. <br /><br />
        Typically, a map is added to a page using a DIV. The map's width and
        height are initialized to those of the DIV container. <br /><br
        /> The Map.onLoad event is fired after the first layer has been added
        to the map. At this point, the map is fully functional. A Map.onLoad handler
        function should be used to add content and change map behaviors. <br
        /><br /> For an introduction on using the Map class, see <a
        href="../jssamples_start.htm#jshelp/intro_firstmap.htm">Adding
        a map</a>.*/
@native ("esri.Map")
extern class Map {
	/* The current extent of the map in map units. See <a href="../jshelp/intro_extents.htm">Setting
            and using extents in a map</a> for more information about extents.*/
	public var extent:esri.geometry.Extent;
	/* Indicates if the fade effect is enabled while zooming. Only applicable
            when <code>navigationMode</code> is set to 'css-transforms'.*/
	public var fadeOnZoom:Bool;
	/* When the <code>mapNavigation</code> mode is set to 'css-transforms',
            CSS3 <a target='_blank' href='http://www.w3schools.com/css3/css3_3dtransforms.asp'>transforms</a>
            will be used for map navigation when supported by the browser. It is recommended
            that you let the map determine when to enable transformations to avoid
            running into a known <a target='_blank' a href="http://code.google.com/p/chromium/issues/detail?id=105227">issue</a>
            with scrollbar rendering on Chrome on Windows XP.*/
	public var force3DTransforms:Bool;
	/* Provides access to the Map's GraphicsLayer. The graphics object is
            available to use after the <code>Map.onLoad</code> event.*/
	public var graphics:esri.layers.GraphicsLayer;
	/* An array of the current <a href="graphicslayer.htm">GraphicsLayers</a>
            in the map.*/
	public var graphicsLayerIds:Array <String>;
	/* Current height of the map in screen pixels. This property is read-only.
            The height and width of the map are normally set in the HTML DIV or other
            HTML element containing the map container.*/
	public var height:Float;
	/* Reference to HTML DIV or other element where the map is placed on the
            page. This property is set in the Map constructor.*/
	public var id:String;
	/* Displays the InfoWindow on a map.*/
	public var infoWindow:esri.dijit.InfoWindow;
	/* When true, the key sequence of shift then click to recenter the map is
            enabled. See <a href="../jshelp/intro_navigation.htm">Map
            navigation</a> for more details. <br/>Known values: true |
            false*/
	public var isClickRecenter:Bool;
	/* When true, double click zoom is enabled. This allows a user to zoom and
            recenter the map by double clicking the mouse. See <a href="../jshelp/intro_navigation.htm">Map
            navigation</a> for more details. <br/>Known values: true |
            false*/
	public var isDoubleClickZoom:Bool;
	/* When true, keyboard navigation is enabled. This allows users to pan the
            keyboard using the arrow keys and to zoom using the + and - keys. See <a
            href="../jshelp/intro_navigation.htm">Map navigation</a>
            for more details. <br/>Known values: true | false*/
	public var isKeyboardNavigation:Bool;
	/* When true, map panning is enabled using the mouse. See <a href="../jshelp/intro_navigation.htm">Map
            navigation</a> for more details. <br/>Known values: true |
            false*/
	public var isPan:Bool;
	/* When true, pan arrows are displayed around the edge of the map. See <a
            href="../jshelp/intro_navigation.htm">Map navigation</a>
            for more details. <br/>Known values: true | false*/
	public var isPanArrows:Bool;
	/* When true, rubberband zoom is enabled. This allows users to draw a bounding
            box zoom area using the mouse. See <a href="../jshelp/intro_navigation.htm">Map
            navigation</a> for more details. <br/>Known values: true |
            false*/
	public var isRubberBandZoom:Bool;
	/* When true, the mouse scroll wheel zoom is enabled. See <a href="../jshelp/intro_navigation.htm">Map
            navigation</a> for more details. <br/>Known values: true |
            false*/
	public var isScrollWheelZoom:Bool;
	/* When true, shift double click zoom is enabled. This allows a user to zoom
            and recenter the map by shift + double clicking the mouse. See <a href="../jshelp/intro_navigation.htm">Map
            navigation</a> for more details. <br/>Known values: true |
            false*/
	public var isShiftDoubleClickZoom:Bool;
	/* When true, the zoom slider is displayed on the map. See <a href="../jshelp/intro_navigation.htm">Map
            navigation</a> for more details. <br/>Known values: true |
            false*/
	public var isZoomSlider:Bool;
	/* Array of current <a href="tiledmapservicelayer.htm">TiledMapServiceLayers</a>
            and <a href="dynamicmapservicelayer.htm">DynamicMapServiceLayers</a>
            added to the map.*/
	public var layerIds:Array <String>;
	/* After the first layer is loaded, the value is set to true. <br/>Known
            values: true | false*/
	public var loaded:Bool;
	/* Indicates whether the map uses CSS3 transformations when panning and zooming.
            In 'css-transform' mode the map will use CSS3 transformations,
            if supported by the browser, to provide a smoother experience while panning
            and zooming the map. <br/>Known values: 'classic' | 'css-transforms'*/
	public var navigationMode:String;
	/* This point geometry in screen coordinates represent the top-left corner
            of the map container. This coordinate also acts as the origin for all screen
            coordinates returned by <a href="map.htm">Map</a>
            and <a href="graphicslayer.htm">GraphicsLayer</a>
            events.*/
	public var position:esri.geometry.Point;
	/* The DOM node that contains the container of layers, build-in info window,
            logo and slider.*/
	public var root:HtmlDom;
	/* If snapping is enabled on the map using <code>map.enableSnapping()</code>
            this property provides access to the <a href="snappingmanager.htm">SnappingManager</a>.
            The snapping manager's <code>setLayerInfo</code> method
            can be used to modify the target snapping layers.*/
	public var snappingManager:esri.SnappingManager;
	/* The spatial reference of the map. See <a href="../jshelp/pcs.htm">Projected
            Coordinate Systems</a> and <a href="../jshelp/gcs.htm">Geographic
            Coordinate Systems</a> for the list of supported spatial references.*/
	public var spatialReference:esri.SpatialReference;
	/* The current <a href="timeextent.htm">TimeExtent</a>
            for the map. Use the <a href="map.htm#setTimeExtent">setTimeExtent</a>
            method to modify the time extent.*/
	public var timeExtent:esri.TimeExtent;
	/* Current width of the map in screen pixels. This property is read-only.
            The height and width of the map are normally set in the HTML DIV or other
            HTML element containing the map container.*/
	public var width:Float;


	/* Adds an ESRI Layer to the map.<br/><br/>The return object
            of <code>Layer</code> was added at v1.4.*/
	public function addLayer(layer:esri.layers.Layer,?index:Float):esri.layers.Layer;

	/* <p>Adds multiple layers to a map. The array order corresponds to
            the layer order in the client side map. The <a href="map.htm#onLayerAddResult">onLayerAddResult</a>
            event fires for each layer that is added. Once all the layers are added
            to the map the <a href="map.htm#onLayersAddResult">onLayersAddResult</a>
            fires.</p>*/
	public function addLayers(layers:Array <esri.layers.Layer>):Void;

	/* Destroys the map instance. After the map is destroyed it is no longer
            valid however you can re-use the div element of the map to create a new
            map instance.*/
	public function destroy():Void;

	/* Disables snapping on the map.*/
	public function disableSnapping():Void;

	/* Enable snapping on the map when working with the Editor, Measurement widget
            or the Draw and Edit toolbars. If no snapOptions are provided all graphics
            layers, including feature layers, will be set as snap targets. Call this
            method after the layers are loaded.*/
	public function enableSnapping(?snapOptions:Dynamic):esri.SnappingManager;

	/* Sets an InfoWindow's anchor when calling <a href="infowindow.htm#show">InfoWindow.show</a>.*/
	public function getInfoWindowAnchor(screenCoords:esri.geometry.Point):String;

	/* Returns an individual layer of a map.*/
	public function getLayer(id:String):esri.layers.Layer;

	/* Gets the current level of detail ID for the map. Valid only with an <a
            href="arcgistiledmapservicelayer.htm">ArcGISTiledMapService</a>
            layer.*/
	public function getLevel():Float;

	/* Removes all layers from the map. <br><br>The map's extent,
            spatial reference, and tiling scheme if defined do not change when the
            layers are removed. When the next layer is added to the map, this layer
            is displayed at the same extent and spatial reference.*/
	public function removeAllLayers():Void;

	/* Removes the specified layer from the map.*/
	public function removeLayer(layer:esri.layers.Layer):Void;

	/* Changes the layer order in the map. Note that the first layer added is
            always the base layer, even if its order is changed.<!--***-->*/
	public function reorderLayer(layer:esri.layers.Layer,index:Float):Void;

	/* Repositions the map DIV on the page. This method should be used after
            the map DIV has been repostioned.*/
	public function reposition():Void;

	/* Resizes the map DIV. This method should be used after the map DIV has
            been resized.*/
	public function resize():Void;

	/* Sets the extent of the map. The extent must be in the same spatial reference
            as the map.*/
	public function setExtent(extent:esri.geometry.Extent,?fit:Bool):Void;

	/* Sets the map to the specified level ID. Zooms to the new level based on
            the current map center point. Valid only with an <a href="arcgistiledmapservicelayer.htm">ArcGISTiledMapService</a>
            layer.*/
	public function setLevel(level:Float):Void;

	/* Sets the default cursor for the map. This cursor is shown whenever the
            mouse is pointed over the map, except when panning by dragging the map
            or using SHIFT+Drag to zoom. If not set, the map uses the platform-dependent
            default cursor, usually an arrow.*/
	public function setMapCursor(cursor:String):Void;

	/* Sets the <a href="timeextent.htm">TimeExtent</a>
            for the map. When the time extent is changed the <a href="map.htm#onTimeExtentChange">onTimeExtentChange</a>
            event fires. Time aware layers listen for this event and update to only
            display content for the current time extent.*/
	public function setTimeExtent(timeExtent:esri.TimeExtent):Void;

	/* Set the time slider associated with the map.*/
	public function setTimeSlider(timeSlider:esri.dijit.TimeSlider):Void;

	/* Converts a single screen point or an array of screen points to map coordinates.*/
	public function toMap(screenPoint:esri.geometry.Point):esri.geometry.Point;

	/* Converts a single map point or an array of map points to screen coordinates.*/
	public function toScreen(mapPoint:esri.geometry.Point):esri.geometry.Point;

	/* Centers and zooms the map.*/
	public function centerAndZoom(mapPoint:esri.geometry.Point,levelOrFactor:Float):Void;

	/* Centers the map based on map coordinates as the center point.*/
	public function centerAt(mapPoint:esri.geometry.Point):Void;

	/* Disallows clicking on a map to center it. See <a href="../jshelp/intro_navigation.htm">Map
            navigation</a> for more details.*/
	public function disableClickRecenter():Void;

	/* Disallows double clicking on a map to zoom in a level and center the map.
            See <a href="../jshelp/intro_navigation.htm">Map navigation</a>
            for more details.*/
	public function disableDoubleClickZoom():Void;

	/* Disallows panning and zooming using the keyboard. See <a href="../jshelp/intro_navigation.htm">Map
            navigation</a> for more details.*/
	public function disableKeyboardNavigation():Void;

	/* Disallows all map navigation except the slider and pan arrows. See <a
            href="../jshelp/intro_navigation.htm">Map navigation</a>
            for more details.*/
	public function disableMapNavigation():Void;

	/* Disallows panning a map using the mouse. See <a href="../jshelp/intro_navigation.htm">Map
            navigation</a> for more details.*/
	public function disablePan():Void;

	/* Disallows zooming in or out on a map using a bounding box. See <a href="../jshelp/intro_navigation.htm">Map
            navigation</a> for more details.*/
	public function disableRubberBandZoom():Void;

	/* Disallows zooming in or out on a map using the mouse scroll wheel. See
            <a href="../jshelp/intro_navigation.htm">Map navigation</a>
            for more details.*/
	public function disableScrollWheelZoom():Void;

	/* Disallows shift double clicking on a map to zoom in a level and center
            the map. See <a href="../jshelp/intro_navigation.htm">Map
            navigation</a> for more details.*/
	public function disableShiftDoubleClickZoom():Void;

	/* Permits users to click on a map to center it. See <a href="../jshelp/intro_navigation.htm">Map
            navigation</a> for more details.*/
	public function enableClickRecenter():Void;

	/* Permits users to double click on a map to zoom in a level and center the
            map. See <a href="../jshelp/intro_navigation.htm">Map navigation</a>
            for more details.*/
	public function enableDoubleClickZoom():Void;

	/* Permits users to pan and zoom using the keyboard. See <a href="../jshelp/intro_navigation.htm">Map
            navigation</a> for more details.*/
	public function enableKeyboardNavigation():Void;

	/* Allows all map navigation. See <a href="../jshelp/intro_navigation.htm">Map
            navigation</a> for more details.*/
	public function enableMapNavigation():Void;

	/* Permits users to pan a map using the mouse. See <a href="../jshelp/intro_navigation.htm">Map
            navigation</a> for more details.*/
	public function enablePan():Void;

	/* Permits users to zoom in or out on a map using a bounding box. See <a
            href="../jshelp/intro_navigation.htm">Map navigation</a>
            for more details.*/
	public function enableRubberBandZoom():Void;

	/* Permits users to zoom in or out on a map using the mouse scroll wheel.
            See <a href="../jshelp/intro_navigation.htm">Map navigation</a>
            for more details.*/
	public function enableScrollWheelZoom():Void;

	/* Permits users to shift double click on a map to zoom in a level and center
            the map. See <a href="../jshelp/intro_navigation.htm">Map
            navigation</a> for more details.*/
	public function enableShiftDoubleClickZoom():Void;

	/* Hides the pan arrows from the map. See <a href="../jshelp/intro_navigation.htm">Map
            navigation</a> for more details.*/
	public function hidePanArrows():Void;

	/* Hides the zoom slider from the map. See <a href="../jshelp/intro_navigation.htm">Map
            navigation</a> for more details.*/
	public function hideZoomSlider():Void;

	/* Pans the map south.*/
	public function panDown():Void;

	/* Pans the map west.*/
	public function panLeft():Void;

	/* Pans the map southwest.*/
	public function panLowerLeft():Void;

	/* Pans the map southeast.*/
	public function panLowerRight():Void;

	/* Pans the map east.*/
	public function panRight():Void;

	/* Pans the map north.*/
	public function panUp():Void;

	/* Pans the map northwest.*/
	public function panUpperLeft():Void;

	/* Pans the map northeast.*/
	public function panUpperRight():Void;

	/* Shows the pan arrows on the map. See <a href="../jshelp/intro_navigation.htm">Map
            navigation</a> for more details.*/
	public function showPanArrows():Void;

	/* Shows the zoom slider on the map. See <a href="../jshelp/intro_navigation.htm">Map
            navigation</a> for more details.*/
	public function showZoomSlider():Void;
	function new(divId:String,?options:{?displayGraphicsOnPan:Bool,?extent:Extent,?fadeOnZoom:Bool,?fitExtent:Bool,?force3DTransforms:Bool,?infoWindow:InfoWindowBase,?lods:Array<LOD>,?logo:Bool,?nav:Bool,?navigationMode:String,?resizeDelay:Float,?showInfoWindowOnClick:Bool,?slider:Bool,?wrapAround180:Bool}):Void;
}