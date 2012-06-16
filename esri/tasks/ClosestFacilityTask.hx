package esri.tasks;

import js.Dom;
/* <i>Class added v2.0.</i><br/><pre class='prettyprint'>dojo.require("esri.tasks.closestfacility");</pre><br/><p>Helps
        you find closest facilities around any location (incident) on a network.</p><p>When
        finding closest facilities, you can specify how many to find and whether
        the direction of travel is toward or away from them. Once you've found
        the closest facilities, you can display the best route to or from them,
        return the travel cost for each route, and display directions to each facility.</p>
        <p> You can also specify a cutoff cost beyond which ArcGIS Network
        Analyst should not search for a facility. For instance, you can set up
        a closest facility problem to search for hospitals within a 15-minute drive
        time of the site of an accident. Any hospitals that take longer than 15
        minutes to reach will not be included in the results. </p><p>
        Note: ClosestFacilityTask, and other closest facility related classes,
        requires ArcGIS Server 10.0 or above and a "closest facility"
        layer. A closest facility layer is a layer of type esriNAServerClosestFacilityLayer.</p><p><b>See
        also</b><br /><a href="http://help.esri.com/en/arcgisdesktop/10.0/help/index.html#//00470000004N000000.htm">Closest
        Facility</a> ArcGIS Desktop Help.</p>*/
@native ("esri.tasks.ClosestFacilityTask")
extern class ClosestFacilityTask {


	/* Solve the closest facility.*/
	public function solve(params:esri.esri.tasks.ClosestFacilityParameters,?_callback:Dynamic->Void,?errback:Dynamic->Void):Dynamic;
	function new():Void;
}