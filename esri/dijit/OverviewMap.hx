package esri.dijit;

import js.Dom;
/* <i>Class added v2.0.</i><br/><pre class='prettyprint'>dojo.require("esri.dijit.OverviewMap");</pre><br/>The
        OverviewMap widget displays the current extent of the map within the context
        of a larger area. The OverviewMap updates whenever the map extent changes.
        The extent of the main map is represented in the overview map area as a
        rectangle. The extent rectangle can be dragged to modify the extent of
        the main map. The OverviewMap can be displayed several ways:<ul><li>Attach
        the overview map to a corner of the main map and hide when not in use.</li><li>Render
        the overview map in a div element outside the main map window.</li><li>Temporarily
        maximize the overview map for quick access to far away areas of interest.
        </li></ul>*/
@native ("esri.dijit.OverviewMap")
extern class OverviewMap {


	/* Releases the resources used by the dijit. Call this method when an instance
            of this dijit is no longer needed.*/
	public function destroy():Void;

	/* Finalizes the creation of the OverviewMap dijit. Call this method after
            the constructor for the dijit is called and before users interact with
            the dijit.*/
	public function startup():Void;
	function new(params:Dynamic,srcNodeRef:Dynamic):Void;
}