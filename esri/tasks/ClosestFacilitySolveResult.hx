package esri.tasks;

import js.Dom;
/* <i>Class added v2.0.</i><br/><br/> <p> The
        result from a ClosestFacilityTask operation.</p></p> Note:
        ClosestFacilitySolveResult, and other closest facility related classes,
        requires ArcGIS Server 10.0 or above and a closest facility layer. A closest
        facility layer is a layer of type esriNAServerClosestFacilityLayer. </p>*/
@native ("esri.tasks.ClosestFacilitySolveResult")
extern class ClosestFacilitySolveResult {
	/* An array of directions. A direction is an instance of esri.tasks.DirectionFeatureSest.
            Route directions are returned if returnDirections was set to true, the
            default is false.*/
	public var directions:esri.tasks.DirectionsFeatureSet;
	/* An array of points, only returned when ClosestFacilityParameters.returnFacilities
            is true.*/
	public var facilities:Array <esri.geometry.Point>;
	/* An array of points, only returned when ClosestFacilityParameters.returnIncidents
            is true.*/
	public var incidents:Array <esri.geometry.Point>;
	/* Message received when the solve is complete. If a closest facility cannot
            be solved, the message returned by the server identifies the incident that
            could not be solved.*/
	public var messages:esri.tasks.NAMessage;
	/* The point barriers are an array of points. They are returned only if ClosestFacilityParameters.returnPointBarriers
            was set to true (which is not the default). If you send in the point barriers
            as a featureSet (instead of using DataLayer), you already have the barriers
            and might not need to request them back from the server.*/
	public var pointBarriers:Array <esri.geometry.Point>;
	/* The polygon barriers are an array of polygons. They are returned only
            if ClosestFacilityParameters.returnPolygonBarriers was set to true (which
            is not the default). If you send in the polygon barriers as a featureSet
            (instead of using DataLayer), you already have the barriers and might not
            need to request them back from the server.*/
	public var polygonBarriers:Array <esri.geometry.Polygon>;
	/* The polyline barriers are an array of polylines. They are returned only
            if ClosestFacilityParameters.returnPolylineBarriers was set to true (which
            is not the default). If you send in the polyline barriers as a featureSet
            (instead of using DataLayer), you already have the barriers and might not
            need to request them back from the server.*/
	public var polylineBarriers:Array <esri.geometry.Polyline>;
	/* The array of routes. Route graphics are returned if returnRoutes is true
            and outputLines does not equal esriNAOutputLineNone. From version 2.0 to
            2.5 the type is an array of Polylines. At version 2.6 the type is an array
            of Graphics.*/
	public var routes:Array <esri.Graphic>;

}