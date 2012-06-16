package esri.virtualearth;

import js.Dom;
/* <i>Class added v1.4.</i><br/><pre class='prettyprint'>dojo.require("esri.virtualearth.VETiledLayer");</pre><br/>
        Bing Maps tiled layer. At version 2.0, Bing Maps uses a key instead of
        token, client and server. If you are working with the 1.x version of the
        ArcGIS JavaScript API, you will need to use tokens, view the information
        <a href="http://resources.esri.com/help/9.3/arcgisserver/apis/javascript/arcgis/help/jshelp_start.htm#jshelp/ve_getting_started.htm">here</a>
        on setting up a Virtual Earth token page.*/
@native ("esri.virtualearth.VETiledLayer")
extern class VETiledLayer extends esri.layers.TiledMapServiceLayer  {
	/* <a href="http://resources.esri.com/arcgisonlineservices/index.cfm?fa=content_detail&contentID=F7F1C178-1422-2413-19F80FF24949EA3C"
            target="_blank">Bing Maps Aerial</a> layer.*/
	public static var MAP_STYLE_AERIAL:String;
	/* <a href="http://resources.esri.com/arcgisonlineservices/index.cfm?fa=content_detail&contentID=F7F67396-1422-2413-19AC5CB0F4B4C16D"
            target="_blank">Bing Maps Aerial with Labels</a> layer.*/
	public static var MAP_STYLE_AERIAL_WITH_LABELS:String;
	/* <a href="http://resources.esri.com/arcgisonlineservices/index.cfm?fa=content_detail&contentID=F7F808BA-1422-2413-19DD79962C752E7F"
            target="_blank">Bing Maps Roads</a> layer.*/
	public static var MAP_STYLE_ROAD:String;
	/* Specifies the culture in which to return results. The default value is
            "en-US". For a list of supported cultures, see <a href="http://msdn.microsoft.com/en-us/library/cc981048.aspx"
            target="_blank">http://msdn.microsoft.com/en-us/library/cc981048.aspx</a>.*/
	public var culture:String;
	/* Bing Maps style. See Constants table for valid values.*/
	public var mapStyle:String;


	/* Sets the culture in which to return results.*/
	public function setCulture(culture:String):Void;

	/* Sets the Bing Maps style.*/
	public function setMapStyle(style:String):Void;
	function new(options:Dynamic):Void;
}