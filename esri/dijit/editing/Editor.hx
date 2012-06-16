package esri.dijit.editing;

import js.Dom;
/* <i>Class added v2.0</i><br/><p>Load the Editor
        using one of the dojo.require statements below. See the <a href="../jshelp_start.htm#jshelp/inside_guidelines.htm#build_rollups">Coding
        Guidelines</a> help topic for details.</p><pre class='prettyprint'>dojo.require("esri.dijit.editing.Editor-all");</pre>
        or <br /><pre class='prettyprint'>dojo.require("esri.dijit.editing.Editor");</pre><p>The
        Editor widget provides out-of-the-box editing capabilities using an editable
        layer in a Feature Service. It combines the out-of-the-box TemplatePicker,
        AttachmentEditor, AttributeInspector and GeometryService to provide feature
        and attribute editing. When building editing applications, try to take
        advantage of the customizable out-of-the-box Editor widget when possible.</p>
        <h4><b>Editing behaviors:</b></h4> <p> <ul>
        <li>To <b>create features</b>, click a feature template
        in the template picker then start drawing the feature.</li> <li>To
        <b>move features</b>, click and drag the feature to a new location.</li>
        <li>To <b>delete features</b>, click the feature then
        press the 'Delete' button on the attribute inspector.</li>
        <li>To <b>edit features</b>, click the feature to display
        the vertices and the attribute inspector.</li><li>Editing Vertices:</li><ul><li><b>Add</b>
        new vertices by clicking a ghost vertex.</li><li>Right-click
        to <b>delete</b> a vertex.</li><li>Click and drag
        to <b>move</b> a vertex to a new location.</li></ul>
        <li><b>Attribute edits</b> are saved automatically when
        you change selection, change the focus field, or press enter.</li>
        <li><b>Geometry edits</b> are saved automatically.</li>
        </ul> </p>*/
@native ("esri.dijit.editing.Editor")
extern class Editor {
	/* Arrow tool*/
	public static var CREATE_TOOL_ARROW:String;
	/* Autocomplete polygon tool*/
	public static var CREATE_TOOL_AUTOCOMPLETE:String;
	/* Circle tool*/
	public static var CREATE_TOOL_CIRCLE:String;
	/* Ellipse tool*/
	public static var CREATE_TOOL_ELLIPSE:String;
	/* Freehand polygon tool*/
	public static var CREATE_TOOL_FREEHAND_POLYGON:String;
	/* Freehand polyline tool*/
	public static var CREATE_TOOL_FREEHAND_POLYLINE:String;
	/* Polygon tool*/
	public static var CREATE_TOOL_POLYGON:String;
	/* Polyline tool*/
	public static var CREATE_TOOL_POLYLINE:String;
	/* Rectangle tool*/
	public static var CREATE_TOOL_RECTANGLE:String;
	/* Triangle tool*/
	public static var CREATE_TOOL_TRIANGLE:String;

	function new(params:Dynamic,srcNodeRef:Dynamic):Void;
}