package esri.tasks;

import js.Dom;
/* <i>Class added v2.0.</i><br/><br/><p> The
        result from a ServiceAreaTask operation.</p><p> Note: ServiceAreaSolveResult,
        and other service area related classes, requires ArcGIS Server 10.0 or
        above and a service area layer. A service area layer is a layer of type
        esriNAServerServiceAreaLayer. </p>*/
@native ("esri.tasks.ServiceAreaSolveResult")
extern class ServiceAreaSolveResult {
	/* Array of points, only returned if ServiceAreaParameters.returnFacilities
            is set to true.*/
	public var facilities:Array <esri.geometry.Point>;
	/* Message received when solve is completed. If a service area cannot be
            solved, the message returned by the server identifies the incident that
            could not be solved.*/
	public var messages:esri.tasks.NAMessage;
	/* The point barriers are an array of points. They are returned only if ServiceAreaParameters.returnPointBarriers
            was set to true (which is not the default). If you send in the point barriers
            as a featureSet (instead of using DataLayer), you already have the barriers
            and might not need to request them back from the server.*/
	public var pointBarriers:Array <esri.geometry.Point>;
	/* The polygon barriers are an array of polygons. They are returned only
            if ServiceAreaParameters.returnPolygonBarriers was set to true (which is
            not the default). If you send in the polygon barriers as a featureSet (instead
            of using DataLayer), you already have the barriers and might not need to
            request them back from the server.*/
	public var polygonBarriers:Array <esri.geometry.Polygon>;
	/* The polyline barriers are an array of polylines. They are returned only
            if ServiceAreaParameters.returnPolylineBarriers was set to true (which
            is not the default). If you send in the polyline barriers as a featureSet
            (instead of using DataLayer), you already have the barriers and might not
            need to request them back from the server.*/
	public var polylineBarriers:Array <esri.geometry.Polyline>;
	/* Array of service area polygon graphics. From version 2.0 to 2.5 the type
            was an array of Polygons. At version 2.6 the type is now an array of Graphics.*/
	public var serviceAreaPolygons:Array <esri.Graphic>;
	/* Array of service area polyline graphics. From version 2.0 to 2.5 the type
            was an array of Polylines. At version 2.6 the type is now an array of Graphics.*/
	public var serviceAreaPolylines:Array <esri.Graphic>;

}