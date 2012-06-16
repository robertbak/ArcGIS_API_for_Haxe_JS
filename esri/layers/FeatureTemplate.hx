package esri.layers;

import js.Dom;
/* <i>Class added v2.0.</i><br/><br/> Feature templates
        define the information required to create a new feature.*/
@native ("esri.layers.FeatureTemplate")
extern class FeatureTemplate {
	/* The default drawing tool specified for this template is the arrow tool.
            <i>As of version 2.1</i>*/
	public static var TOOL_ARROW:String;
	/* The default drawing tool specified for this template is a auto complete
            polygon tool. .*/
	public static var TOOL_AUTO_COMPLETE_POLYGON:String;
	/* The default drawing tool specified for this template is the circle tool.
            . The Editor dijit will map this to CREATE_TOOL_POLYGON.*/
	public static var TOOL_CIRCLE:String;
	/* The default drawing tool specified for this template is a ellipse tool.
            The Editor dijit will map this to CREATE_TOOL_POLYGON.*/
	public static var TOOL_ELLIPSE:String;
	/* The default drawing tool specified for this template is the freehand tool.*/
	public static var TOOL_FREEHAND:String;
	/* The default drawing tool specified for this template is the line tool.*/
	public static var TOOL_LINE:String;
	/* No default tool is specified.*/
	public static var TOOL_NONE:String;
	/* The default drawing tool specified for this template is the point tool.*/
	public static var TOOL_POINT:String;
	/* The default drawing tool specified for this template is the polygon tool.*/
	public static var TOOL_POLYGON:String;
	/* The default drawing tool specified for this template is the rectangle.
            <i>As of version 2.1</i>*/
	//public static var TOOL_RECTANGLE:String;
	/* The default drawing tool specified for this template is the rectangle
            tool.*/
	public static var TOOL_RECTANGLE:String;
	/* The default drawing tool specified for this template is the triangle <i>As
            of version 2.1</i>*/
	public static var TOOL_TRIANGLE:String;
	/* The description of the template.*/
	public var description:String;
	/* The default drawing tool defined for the template. See the constants table
              for a list of valid values.*/
	public var drawingTool:String;
	/* The templates name.*/
	public var name:String;
	/* <p>An instance of the prototypical feature described by the template.
              It specifies default values for the attribute fields and does not contain
              geometry.</p>*/
	public var prototype:esri.Graphic;


	/* Converts object to its ArcGIS Server JSON representation.*/
	public function toJson():Dynamic;
}