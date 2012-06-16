package esri.tasks;

import js.Dom;
/* <i>Class added v1.4.</i><br/><br/> A <a href="featureset.htm">FeatureSet</a>
        that has properties specific to routing. The <a href="featureset.htm#features">FeatureSet.features</a>
        property contains the turn by turn directions text and geometry of the
        route. The attributes for each feature provide information associated with
        the corresponding route segment. The following attributes are returned:
        <br/><br/> <ul> <li>text - The direction text.
        </li> <li>length - The length of the route segment. </li>
        <li>time - The time to travel along the route segment. </li>
        <li>ETA - The estimated time of arrival at the route segment in the
        local time. </li> <li><a href="http://resources.esri.com/help/9.3/ArcGISDesktop/ArcObjects/esriNetworkAnalyst/esriDirectionsManeuverType.htm"
        target="_blank">maneuverType</a> - The type of maneuver
        that the direction represents. </li> </ul> <br/> DirectionsFeatureSet
        has no constructor. For more information, see <a href="../jshelp/intro_route_directions.htm">Getting
        driving directions</a>.*/
@native ("esri.tasks.DirectionsFeatureSet")
extern class DirectionsFeatureSet extends esri.tasks.FeatureSet  {
	/* The extent of the route.*/
	public var extent:esri.geometry.Extent;
	/* A single polyline representing the route.*/
	public var mergedGeometry:esri.geometry.Polyline;
	/* The ID of the route returned from the server.*/
	public var routeId:String;
	/* Name specified in <code>RouteParameters.stops</code>.*/
	public var routeName:String;
	/* Actual drive time calculated for the route.*/
	public var totalDriveTime:Float;
	/* The length of the route as specified in <code>RouteParameters.directionsLengthUnits</code>.*/
	public var totalLength:Float;
	/* The total time calculated for the route as specified in <code>RouteParameters.directionsTimeAttribute</code>.*/
	public var totalTime:Float;

}