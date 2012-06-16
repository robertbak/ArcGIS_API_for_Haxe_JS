package esri.tasks;

import js.Dom;
/* <i>Class added v2.6.</i><br/><br/>Define the classification
        definition and optional where clause for the <a href="../jsapi_start.htm#jsapi/generaterenderertask.htm">GenerateRendererTask</a>
        operation.*/
@native ("esri.tasks.GenerateRendererParameters")
extern class GenerateRendererParameters {
	/* A <a href='../jsapi_start.htm#jsapi/classbreaksdefinition.htm'>ClassBreaksDefinition</a>
            or <a href='../jsapi_start.htm#jsapi/uniquevaluedefinition.htm'>UniqueValueDefinition</a>
            classification definition used to generate the data classes.*/
	public var classificationDefinition:esri.tasks.ClassificationDefinition;
	/* A where clause used to generate the data classes. Any legal SQL where
            clause operating on the fields in the layer/table is allowed.*/
	public var where:String;

	function new():Void;
}