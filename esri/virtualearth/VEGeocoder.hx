package esri.virtualearth;

import js.Dom;
/* <i>Class added v1.4.</i><br/><pre class='prettyprint'>dojo.require("esri.virtualearth.VEGeocoder");</pre><br/>
        Bing Maps geocoder. See <a href="locator.htm">Locator</a>
        for geocoding with ArcGIS Server locators. If you are working with the
        1.x version of the ArcGIS JavaScript API, you will need to use tokens,
        view the information <a href="http://resources.esri.com/help/9.3/arcgisserver/apis/javascript/arcgis/help/jshelp_start.htm#jshelp/ve_getting_started.htm">here</a>
        on setting up a Virtual Earth token page. <p> Note: there are restrictions
        when using Bing Maps geocoding: <ul> <li>Geocodes may not be
        stored for any purpose except caching for performance.</li> <li>Geocodes
        may not be displayed on any map other than a Bing Map.</li> </ul>
        For more information on the Bing Maps terms of use when using Esri products,
        see the <a href="http://www.esri.com/legal/pdfs/e-802-bing-mapsvcs.pdf">Microsoft
        Bing Maps Services Terms of Use</a>. </p>*/
@native ("esri.virtualearth.VEGeocoder")
extern class VEGeocoder {
	/* Specifies the culture in which to return results. The default value is
            "en-US". For a list of supported cultures, see <a href="http://msdn.microsoft.com/en-us/library/cc981048.aspx"
            target="_blank">http://msdn.microsoft.com/en-us/library/cc981048.aspx</a>.*/
	public var culture:String;


	/* Sends a geocode request to Bing Maps to find candidates for a single address
            specified in the <span class="code">query</span>
            argument. On completion, the onAddressToLocationsComplete event is fired
            and the optional callback function is invoked.*/
	public function addressToLocations(query:String,?_callback:Dynamic->Void,?errback:Dynamic->Void):Dynamic;

	/* Sets the culture in which to return results.*/
	public function setCulture(culture:String):Void;
	function new(options:Dynamic):Void;
}