package esri.dijit.editing;

import js.Dom;
/* <p><i>Class added v2.0.</i><br/><p>Load
        the TemplatePicker using one of the dojo.require statements below. See
        the <a href="../jshelp/inside_guidelines.htm#build_rollups">Coding
        Guidelines</a> help topic for details.</p><pre class='prettyprint'>dojo.require("esri.dijit.editing.TemplatePicker-all");</pre>or<pre
        class='prettyprint'>dojo.require("esri.dijit.editing.TemplatePicker");</pre><br/>A
        template picker displays a gallery of templates from one or more feature
        layers. For each template, a symbol and a label is displayed. Users can
        select or deselect a symbol by clicking on the item.</p>*/
@native ("esri.dijit.editing.TemplatePicker")
extern class TemplatePicker {
	/* Reference to the data grid used to display the templates.*/
	public var grid:Dynamic;
	/* If tooltips are enabled the reference to the tooltip div.*/
	public var tooltip:HtmlDom;


	/* Get or set the properties of the template picker. See the dojo documentation
            for more details about this <a href="http://api.dojotoolkit.org/jsdoc/1.3.2/dijit._Widget.attr">method.</a>*/
	public function attr(name:String,?value:Dynamic):Void;

	/* Clears the current selection.*/
	public function clearSelection():Void;

	/* Destroys the template picker. Call destroy() when the widget is no longer
            needed by the application.*/
	public function destroy():Void;

	/* Gets the selected item picked by the user. If the widget was initialized
            with FeatureLayer the properties of the returned object are in the following
            format: <pre class='prettyprint'> { featureLayer: &lt;FeatureLayer>,
            type: &lt;FeatureType>, template: &lt;FeatureTemplate> }
            </pre> If the widget was initialized with items the returned object
            will have the following properties: <pre class='prettyprint'>
            { item: &lt;Object&gt } </pre>*/
	public function getSelected():Dynamic;

	/* Finalizes the creation of the template picker. Call startup() after creating
            the widget when you are ready for user interaction.*/
	public function startup():Void;

	/* Updates the templatePicker after modifying the properties of the widget.*/
	public function update():Void;
	function new(params:Dynamic,srcNodeRef:Dynamic):Void;
}