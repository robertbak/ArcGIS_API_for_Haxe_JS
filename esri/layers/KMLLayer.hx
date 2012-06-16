package esri.layers;

import js.Dom;
/* <i>Class added v2.4</i><br/><pre class='prettyprint'>dojo.require("esri.layers.KMLLayer");</pre>The
        KMLLayer class is used to create a layer based on a KML file (.kml,.kmz).
        KML is an XML-based file format used to represent geographic features.
        To add a KML file(.kml or .kmz) to a map, the KML must be available via
        a publicly accessible URL. Locally hosted or KML files inside a firewall
        are not supported. <b>Accessing features from a KML file</b>
        <p>Features from the KML file are accessible via the api so you can
        query features and use them as input to geometry or geoprocessing services.
        You can access and manipulate a KML layer's features like any other
        layer. Because of the wide range of feature types that can be stored in
        a KML file, a KML layer added to a map is internally made up of several
        layers. An ArcGIS API for JavaScript KML layer can be thought of as more
        of a group layer rather than a single layer. </p> <p>Geometries
        from a KML file are stored as feature layers: one each for points, lines
        and polygons. Feature layers for a particular geometry type are only created
        if there are features of that geometry type in the KML file. The getLayers()
        method returns the layers that make up a KML file. The following code snippet
        shows how to get a KML layer's layers, checks that a layer has graphics,
        unions the layer extents and then zooms to the new extent: <pre>
        var kmlExtent, layers = kml.getLayers(); dojo.forEach(layers, function(lyr)
        { if ( lyr.graphics && lyr.graphics.length > 0 ) { var lyrExtent
        = esri.geometry.geographicToWebMercator( esri.graphicsExtent(lyr.graphics)
        ); if ( globals.kmlExtent ) { kmlExtent = kmlExtent.union(lyrExtent); }
        else { kmlExtent = lyrExtent; } }); map.setExtent(kmlExtent); </pre>
        </p> <b>Supported Features</b> <p>The following
        KML features are supported at version 2.4: <ul> <li>Placemarks</li>
        <li>Network links <i>without</i> refresh parameters</li>
        <li>Ground overlays</li> <li>Folders</li> <li>Point,
        polyline, and polygon symbology, including icons</li> <li>HTML
        in feature descriptions</li> </ul> Support for the following
        was added at version 2.5: <ul> <li>Network links with refresh
        parameters</li> <li>ExtendedData feature attributes</li>
        <li>Time</li> </ul> The following features are not supported:
        <ul> <li>Screen overlays</li> <li>Regionated KML</li>
        <li>Regions inside network links</li> </ul> </p>*/
@native ("esri.layers.KMLLayer")
extern class KMLLayer extends esri.layers.Layer  {
	/* <p>An array of objects that describe top-level KML features ids
            and their types. Objects in the array have the following properties: <pre
            class='prettyprint'> { "type":&lt;Number&gt;,
            "id": &lt;Number&gt; } </pre> </p> <p>The
            type can be one of the following:Folder, GroundOverlay, Line, NetworkLink,Point,
            Polygon, ScreenOverlay. </p>*/
	public var featureInfos:Array <Dynamic>;
	/* An array of KMLFolder objects that describe the folders and nested folders
            defined in the KML file. Use the parentFolderId and subFolderIds to identify
            the hierarchical relationship between folders.*/
	public var folders:Array <esri.layers.KMLFolder>;
	/* A link info object with properties that describe the network link. The
            object has the following properties: <pre class='prettyprint'>
            { "id": &lt;Number>, "name": &lt;String>,
            "description": &lt;String>, "snippet": &lt;String>,
            "visibility": &lt;Number> "refreshMode": &lt;String>,
            "refreshInterval": &lt;Number>, "viewRefreshMode":
            &lt;String>, "viewRefreshTime": &lt;Number>, "viewBoundScale":
            &lt;Number>, "viewFormat": &lt;String>, "httpQuery":
            &lt;String> } </pre>*/
	public var linkInfo:Dynamic;


	/* <p>Get the KML feature identified by the input feature info. The
            table below lists the type of objects returned for the KML feature types.</p>
            <table class="syntaxTable" cellspacing=0> <tr><th>KML
            &lt;Feature&gt;</th><th>Class name of returned object</th></tr>
            <tr><td class="detailTable">Placemark</td><td
            class="detailTable">Graphic</td></tr> <tr><td
            class="detailTable">GroundOverlay</td class="detailTable"><td>KMLGroundOverlay</td></tr>
            <tr><td class="detailTable">ScreenOverlay</td
            class="detailTable"><td>KMLScreenOverlay (Not Implemented)</td></tr>
            <tr><td class="detailTable">NetworkLink</td class="detailTable"><td>KMLLayer</td></tr>
            <tr><td class="detailTable">Folder</td><td
            class="detailTable">KMLFolder</td></tr> </table>*/
	public function getFeature(featureInfo:Dynamic):Dynamic;

	/* Get an array of map layers that were created to draw placemarks, ground
            and screen overlays. The returned array can have instances of the following
            layer types: FeatureLayer, MapImageLayer or KMLLayer . This method can
            be used to override the renderer for feature layers.*/
	public function getLayers():Array <esri.layers.Layer>;

	/* Set the visibility for the specified folder.*/
	public function setFolderVisibility(folder:esri.layers.KMLFolder,isTrue:Bool):Void;
	function new(url:String,?options:Dynamic):Void;
}