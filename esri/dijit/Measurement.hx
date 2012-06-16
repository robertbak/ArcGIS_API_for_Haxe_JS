package esri.dijit;

import js.Dom;
/* <i>Class added v2.3</i><br/>The Measurement widget provides
        tools for calculating the current location (Get Location) and measuring
        distance (Measure Distance) and area (Measure Area). If the map's
        coordinate system is not Web Mercator or geographic or if complex polygons
        are drawn the measure widget will need to use the geometry service to project
        or simplify geometries. Use esri.config.defaults to specify the geometry
        service for your application. <pre class='prettyprint'>
        esri.config.defaults.geometryService = new esri.tasks.GeometryService("http://sampleserver3.arcgisonline.com/arcgis/rest/services/Geometry/GeometryServer");
        </pre> <p>It is recommended that you create a geometry service
        for use within your applications. View the <a href="http://help.arcgis.com/en/arcgisserver/10.0/help/arcgis_server_dotnet_help/index.html#//009300000027000000.htm">
        Geometry Services</a> help topic in the Server Resource Center for
        details on creating and publishing a geometry service. ESRI hosts a geometry
        service on <a href="http://sampleserver3.arcgisonline.com/ArcGIS/rest/services/Geometry/GeometryServer">sampleserver3</a>
        to support samples published in the Resource Center. You are welcome to
        use this service for development and testing purposes. ESRI also hosts
        a geometry service on <a href="http://tasks.arcgisonline.com/ArcGIS/rest/services/Geometry/GeometryServer">tasks.arcgisonline.com</a>;
        this service can be used for production applications however, we do not
        guarantee that the service will be available 24/7. </p>*/
@native ("esri.dijit.Measurement")
extern class Measurement {


	/* Remove the measurement graphics and results.*/
	public function clearResult():Void;

	/* Destroy the measurement widget.*/
	public function destroy():Void;

	/* Hide the measurement widget.*/
	public function hide():Void;

	/* Hide the specified tool.*/
	public function hideTool(toolName:String):Void;

	/* Activate or deactivate a tool. The widget must be created before using
            this method so wait until after <code>startup</code> to set
            the tool.*/
	public function setTool(toolName:String,activate:Bool):Void;

	/* Show the measurement widget after it has been hidden using the hide method.*/
	public function show():Void;

	/* Display the specified tool.*/
	public function showTool(toolName:String):Void;

	/* Finalizes the creation of the measurement widget . Call startup() after
            creating the widget when you are ready for user interaction.*/
	public function startup():Void;
	function new(srcNodeRef:String,params:Dynamic):Void;
}