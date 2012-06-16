package esri.tasks;

import js.Dom;
/* <i>Class added v2.6</i><br/> Define a unique value classification
        scheme used by the <a href='../jsapi_start.htm#jsapi/generatedatatask.htm'>GenerateDataTask</a>
        to generate a renderer that groups values based on a unique combination
        of one or more fields. Typically features are rendered based on the unique
        values of one attribute field. However up to three fields can be combined
        to generate a unique value.*/
@native ("esri.tasks.UniqueValueDefinition")
extern class UniqueValueDefinition {
	/* The name of the field that contains unique values.*/
	public var attributeField:String;
	/* The name of the field that contains unique values when combined with the
            values specified by <code>attributeField</code>.*/
	public var attributeField2:String;
	/* The name of the field that contains unique values when combined with the
            values specified by <code>attributeField</code> and <code>attributeField2</code>.*/
	public var attributeField3:String;
	/* Define a default symbol for the classification. If a <code>baseSymbol</code>
            is not defined then a default symbol is created based on the geometryType
            of the layer.*/
	public var baseSymbol:esri.symbol.Symbol;
	/* Define a color ramp for the classification. If a <code>colorRamp</code>
            is not defined then a default color ramp will be used to assign a color
            to each class.*/
	public var colorRamp:AlgorithmicColorRamp;


	/* Returns an easily serializable object representation of the unique value
            definition.*/
	public function toJson():Dynamic;
	function new():Void;
}