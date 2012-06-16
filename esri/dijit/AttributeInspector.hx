package esri.dijit;

import js.Dom;
/* <i>Class added v2.0.</i><br/><p>Load the AttributeInspector
        using one of the dojo.require statements below. See the <a href="../jshelp/inside_guidelines.htm#build_rollups">Coding
        Guidelines</a> help topic for details.</p><pre class='prettyprint'>dojo.require("esri.dijit.AttributeInspector-all");</pre>or<pre
        class='prettyprint'>dojo.require("esri.dijit.AttributeInspector");</pre>
        <p>The attribute inspector displays the attributes of selected features
        from one or more feature layers. If the layer is editable, the feature
        attributes will be editable. The AttributeInspector widget honors the domains
        and subtypes as defined by the Feature Service. The widget is used by the
        Editor widget, but can also be used directly in both editing and "show
        attributes" scenarios. While commonly put into an InfoWindow, you
        can also put it into other containers, for example outside of the map or
        without using a map.</p> <p>If the feature layer supports attachments,
        attachments will be visible in the attribute inspector. If the feature
        layers are from a feature service then attribute inspector will include
        the ability to create, view and delete attachments.</p>*/
@native ("esri.dijit.AttributeInspector")
extern class AttributeInspector {
	/* Field displayed as a rich text field.*/
	public static var STRING_FIELD_OPTION_RICHTEXT:String;
	/* Field displayed as a text area.*/
	public static var STRING_FIELD_OPTION_TEXTAREA:String;
	/* Field displays as a text box.*/
	public static var STRING_FIELD_OPTION_TEXTBOX:String;


	/* Destroys the widget, used for page clean up.*/
	public function destroy():Void;

	/* Moves to the first feature.*/
	public function first():Void;

	/* Moves to the last feature.*/
	public function last():Void;

	/* Move to the next feature.*/
	public function next():Void;

	/* Move to the previous feature.*/
	public function previous():Void;

	/* Updates the contents of the AttributeInspector.*/
	public function refresh():Void;
	function new(params:Dynamic,srcNodeRef:String):Void;
}