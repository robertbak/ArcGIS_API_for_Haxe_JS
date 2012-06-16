package esri.esri.arcgis;

import js.Dom;
/* <pre class='prettyprint'>dojo.require("esri.arcgis.utils");</pre><p>The
        esri.arcgis.utils namespace has several utility methods to work with maps
        from ArcGIS.com. These methods work with items shared on ArcGIS Online.
        You can discover the item's unique ID by browsing to the item in <a
        target="_blank" href="http://www.arcgis.com/home/">ArcGIS.com</a>
        then extracting the id from the item's URL.</p>*/
//@native ("esri.esri.arcgis.utils")
class Utils {
	/* Specify the domain where the map associated with the webmap id is located.
            The default value is http://www.arcgis.com/sharing/content/items*/
	public static var arcgisUrl:String;


	/* <p>Create a map using information from an ArcGIS.com item. The information
            included in the response object returned to the callback depends on the
            version. View the <a href="../jshelp_start.htm#jshelp/intro_webmap.html">Working
            with web maps</a> help topic for details on the response object.*/
	public static function createMap(itemId:String,mapDiv:String,?options:Dynamic):Dynamic{
return untyped __js__('esri.esri.arcgis.utils.createMap(itemId/itemInfo,mapDiv,options)');}

	/* <p>Get details about the input ArcGIS.com item. An object with the
            following specification is passed to the callback: </p> <pre class='prettyprint'>
            { item: &lt;Object&gt;, itemData: &lt;Object&gt; } </pre>
            The information included in the response object returned to the callback
            depends on the version. View the <a href="../jshelp_start.htm#jshelp/intro_webmap.html">Working
            with web maps</a> help topic for details on the response object.*/
	public static function getItem(itemId:String):Dynamic{
return untyped __js__('esri.esri.arcgis.utils.getItem(itemId)');}
}