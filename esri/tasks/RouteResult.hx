package esri.tasks;

import js.Dom;
/* <i>Class added v1.4.</i><br/><br/> The result
        from the Route Task. The RouteResult properties are dependent on the <a
        href="routeparameters.htm">RouteParameter</a> inputs.
        For example, directions are only returned if RouteParameters.returnDirections
        is set to "true". RouteResult has no constructor.*/
@native ("esri.tasks.RouteResult")
extern class RouteResult {
	/* Route directions are returned if <code>RouteParameters.returnDirections</code>
            is set to true. For more information, see <a href="../jshelp/intro_route_directions.htm">Getting
            driving directions</a>.*/
	public var directions:esri.tasks.DirectionsFeatureSet;
	/* The Route graphic that is returned if <code>RouteParameters.returnRoutes</code>
            is true. For the list of attributes associated with the route, see the
            "Route properties" section in <a href="http://webhelp.esri.com/arcgisdesktop/9.3/index.cfm?TopicName=Finding_the_best_route"
            class="external text" title="http://webhelp.esri.com/arcgisdesktop/9.3/index.cfm?TopicName=Finding_the_best_route"
            target="_blank">Finding the best route</a>.*/
	public var route:esri.Graphic;
	/* The name of the route.*/
	public var routeName:String;
	/* Array of stops. Returned only if <code>RouteParameters.returnStops</code>
            is true. For the list of attributes returned for each stop, see the "Stop
            properties" section in <a href="http://webhelp.esri.com/arcgisdesktop/9.3/index.cfm?TopicName=Finding_the_best_route"
            class="external text" title="http://webhelp.esri.com/arcgisdesktop/9.3/index.cfm?TopicName=Finding_the_best_route"
            target="_blank">Finding the best route</a>.*/
	public var stops:Array <esri.Graphic>;

}