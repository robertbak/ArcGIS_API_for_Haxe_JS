package esri.dijit;

import js.Dom;
/* <i>Class added v2.1</i><br/><pre class='prettyprint'>dojo.require("esri.dijit.Legend");</pre><p>The
        legend dijit displays a label and symbol for some or all of the layers
        in the map. If specified, the legend will respect scale dependencies and
        only display layers and sub layers that are currently visible in the map.
        The legend automatically updates if the visibility of a layer or sublayer
        changes. </p> <p>The legend supports the following layer types:
        ArcGISDynamicMapServiceLayer, ArcGISTiledMapServiceLayer, FeatureLayer
        and KMLLayer. If the layer is an ArcGISDynamicMapServiceLayer or ArcGISTiledMapServiceLayer
        created using ArcGIS Server 10.0 SP1 or higher the legend is generated
        using the REST Map Service legend resource.</p> <pre class='prettyprint'>
        http://mapservice-url/legend </pre> <p>If the layers are version
        10 or lower the legend is created using the <a target="_blank"
        href="http://www.arcgis.com/home/">ArcGIS.com</a> legend
        service. In order to use the ArcGIS.com legend service your map service
        needs to be publicly accessible and your application must be able to access
        ArcGIS.com. </p> <p>The legend for feature layers is created
        using the layer's drawing info, for example: <pre class='prettyprint'>
        http://sampleserver3.arcgisonline.com/ArcGIS/rest/services/Earthquakes/EarthquakesFromLastSevenDays/MapServer/0
        </pre> </p>*/
@native ("esri.dijit.Legend")
extern class Legend {


	/* Destroys the legend. Call destroy() when the widget is no longer needed
            by the application.*/
	public function destroy():Void;

	/* Refresh the legend. Takes an optional list of layerInfos to replace the
            layers setup by the legend constructor. Calling refresh is only necessary
            when layerInfos is used in the Legend constructor, otherwise the legend
            will refresh the layers automatically.*/
	public function refresh():Void;

	/* Finalizes the creation of the legend . Call startup() after creating the
            widget when you are ready for user interaction.*/
	public function startup():Void;
	function new(params:Dynamic,srcNodeRef:String):Void;
}