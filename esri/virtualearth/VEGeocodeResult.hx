package esri.virtualearth;

import js.Dom;
/* <i>Class added v1.4.</i><br/><br/> Represents
        a Bing Maps address and its location. Many of the property definitions
        are taken from the Bing Maps documentation <a href="http://msdn.microsoft.com/en-us/library/cc980950.aspx"
        target="_blank">GeocodeResult Class</a>. VEGeocodeResult
        has no constructor. <p> Note: there are restrictions when using Bing
        Maps geocoding: <ul> <li>Geocodes may not be stored for any
        purpose except caching for performance.</li> <li>Geocodes may
        not be displayed on any map other than a Bing Map.</li> </ul>
        For more information on the Bing Maps terms of use when using Esri products,
        see the <a href="http://www.esri.com/legal/pdfs/e-802-bing-mapsvcs.pdf">Microsoft
        Bing Maps Services Terms of Use</a>. </p>*/
@native ("esri.virtualearth.VEGeocodeResult")
extern class VEGeocodeResult {
	/* Specifies address properties for the result.*/
	public var address:esri.virtualearth.VEAddress;
	/* Best extent for displaying the result.*/
	public var bestView:esri.geometry.Extent;
	/* Contains values that indicate the geocode method used to match the location
            to the map. The values are "Interpolation", "Parcel",
            and "Rooftop". For more information see <a href="http://msdn.microsoft.com/en-us/library/cc980868.aspx"
            target="_blank">http://msdn.microsoft.com/en-us/library/cc980868.aspx</a>
            under "Match Methods".*/
	public var calculationMethod:String;
	/* Value indicating how confident the service is about the result. Values
            are Low, Medium, and High.*/
	public var confidence:String;
	/* Contains a display name for the result.*/
	public var displayName:String;
	/* Further refines the geocode results that have been returned. For more
            details on entities and a list of entities that are returned see, <a
            href="http://msdn.microsoft.com/en-us/library/cc981001.aspx"
            target="_blank">http://msdn.microsoft.com/en-us/library/cc981001.aspx</a>.*/
	public var entityType:String;
	/* The X and Y coordinates of the result in decimal degrees.*/
	public var location:esri.geometry.Point;
	/* An array of values that indicate the geocoding level of the location match.
            For more information and a list of values, see <a href="http://msdn.microsoft.com/en-us/library/cc980868.aspx"
            target="_blank">http://msdn.microsoft.com/en-us/library/cc980868.aspx</a>.*/
	public var matchCodes:String;

}