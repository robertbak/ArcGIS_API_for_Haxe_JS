package esri.tasks;

import js.Dom;
/* <pre class='prettyprint'>dojo.require("esri.tasks.locator");</pre><br
        />Represents a geocode service resource exposed by the ArcGIS Server
        REST API. It is used to generate candidates for an address. It also used
        to find an address for a given location.*/
@native ("esri.tasks.Locator")
extern class Locator {
	/* <p>The spatial reference of the output geometries. If not specified,
            the output geometries are in the spatial reference of the input geometries.
            If <i>processSpatialReferencew</i> is specified and <i>outSpatialReference</i>
            is not specified, the output geometries are in the spatial reference of
            the process spatial reference. See <a href="../jshelp/pcs.htm">Projected
            Coordinate Systems</a> and <a href="../jshelp/gcs.htm">Geographic
            Coordinate Systems</a> for the list of supported spatial references.</p>*/
	public var outSpatialReference:esri.SpatialReference;
	/* URL to the ArcGIS Server REST resource that represents a locator service.
            To obtain the URL, use <a href="../jshelp/ags_rest.htm">Services
            Directory</a>.*/
	public var url:String;


	/* Sends a request to the ArcGIS REST geocode resource to find candidates
            for a single address specified in the <span class="code">address</span>
            parameter. On completion, the onAddressToLocationsComplete event is fired
            and the optional callback function is invoked.<br/><br/>The
            return object of <code>dojo.Deferred</code> was added at v1.4.
            At version 2.6 the method signature was updated to accept a params object.
            The old signature <code>addressToLocations(address,outFields?,callback?,errback?)</code>
            will still work.*/
	public function addressToLocations(params:Dynamic,?_callback:Dynamic->Void,?errback:Dynamic->Void):Dynamic;

	/* Locates an address based on a given point.<br/><br/>The return
            object of <code>dojo.Deferred</code> was added at v1.4.*/
	public function locationToAddress(location:esri.geometry.Point,distance:Float,?_callback:Dynamic->Void,?errback:Dynamic->Void):Dynamic;

	/* <p>Sets the well-known ID of the spatial reference of the output
            geometries.</p>*/
	public function setOutSpatialReference(spatialReference:esri.SpatialReference):Void;
	function new(url:String):Void;
}