package esri.dijit.editing;

import js.Dom;
/* <i>Class added v2.0.</i><br/><pre class='prettyprint'>dojo.require("esri.dijit.editing.AttachmentEditor");</pre><p>Widget
        that supports viewing attachments for feature layers that have attachments
        enabled. If the feature layers are from a feature service then the attachment
        editor will include the ability to create, view and delete attachments.</p>*/
@native ("esri.dijit.editing.AttachmentEditor")
extern class AttachmentEditor {


	/* Display the attachment editor.*/
	public function showAttachments(graphic:esri.Graphic,featureLayer:esri.layers.FeatureLayer):Void;

	/* Finalizes the creation of the attachment editor. Call startup() after
            creating the widget when you are ready for user interaction.*/
	public function startup():Void;
	function new(params:Dynamic,srcNodeRef:String):Void;
}