package esri.toolbars;

import js.Dom;
/* <i>Class added v2.0.</i><br/><pre class='prettyprint'>dojo.require("esri.toolbars.edit");</pre><br/>
        <p>The Edit toolbar is a helper class that provides functionality
        to move graphics or modify individual vertices, i.e. edit the geometry
        of existing graphics. To add new graphics, use the <a href="draw.htm">Draw
        toolbar</a>. Updated at version 2.1 to include support for rotating
        and scaling. </p> <p>Mouse behavior when editing features:</p>
        <ul> <li> To move a feature, once the Edit toolbar is activated
        with that feature, press down on the feature, drag it, then let go at the
        new location.</li> <li>To add a vertex to a polyline or polygon,
        click on a "ghost" vertices and move it to the new location.</li>
        <li>To delete a vertex from a polyline or polygon, right-click the
        vertex and select 'Delete Vertex' from the menu. Only valid for
        polylines with at least three vertices and polygons with at least four
        vertices.</li> <li>To rotate or scale a geometry click the
        handle and move to the desired location.</li> </ul>*/
@native ("esri.toolbars.Edit")
extern class Edit {
	/* <p>Display and edit vertices of a <a href="polyline.htm">Polyline</a>,
            <a href="polygon.htm">Polygon</a>, or <a href="multipoint.htm">Multipoint</a>.
            For <a href="polyline.htm">Polyline</a> and <a
            href="polygon.htm">Polygon</a> ghost vertices are also
            displayed. Ghost vertices are points in between the existing points on
            a path or ring that is not yet part of the graphic. The last three points
            in a polyong, last two points in a line, and last point in a multipoint
            cannot be deleted.</p> <table CLASS="detailTABLE" cellspacing="0"
            > <tr> <td class="detailTABLE">Add</td>
            <td class="detailTABLE">Click and drag a ghost vertice
            to add it to the graphic.</td> </tr> <tr> <td class="detailTABLE">Delete</td>
            <td class="detailTABLE">Right-click a vertex and select
            Delete.</td> </tr> <tr> <td class="detailTABLE">Move</td>
            <td class="detailTABLE">Click and drag a vertex</td>
            </tr> </table>*/
	public static var EDIT_VERTICES:Float;
	/* Move graphic to a new location on the map. Applicable to <a href="point.htm">Point</a>,
            <a href="polyline.htm">Polyline</a>, or <a href="polygon.htm">Polygon</a>.*/
	public static var MOVE:Float;
	/* Rotate the graphic. <i> As of version 2.1</i>.*/
	public static var ROTATE:String;
	/* Scale or resize a graphic. <i>As of version 2.1</i>*/
	public static var SCALE:String;


	/* Activates the toolbar to edit the supplied graphic. After activation the
            toolbar is ready for user interaction using the specified tool.*/
	public function activate(tool:String,graphic:esri.Graphic,?options:Dynamic):Void;

	/* Deactivates the toolbar. Call this method to deactivate the toolbar after
            editing the graphic.*/
	public function deactivate():Void;

	/* An object with the following properties that describe the current state.<table
            CLASS="detailTABLE" cellspacing="0" > <tr>
            <td class="detailTABLE">Value</td> <td class="detailTABLE">Description</td>
            </tr> <tr> <td class="detailTABLE">&lt;Number>
            tool</td> <td class="detailTABLE">Indicates if the
            tool is currently being used. Valid values are listed in the constants
            table.</td> </tr> <tr> <td class="detailTABLE">&lt;<a
            href="graphic.htm">Graphic</a>&gt; graphic</td>
            <td class="detailTABLE">The graphic that is currently being
            edited.</td> </tr> <tr> <td class="detailTABLE">&lt;Boolean>
            isModified</td> <td class="detailTABLE">Indicates
            if the graphic has been modified.</td> </tr> </table>*/
	public function getCurrentState():Dynamic;

	/* Refreshes the internal state of the toolbar.*/
	public function refresh():Void;
	function new(map:esri.Map,?options:Dynamic):Void;
}