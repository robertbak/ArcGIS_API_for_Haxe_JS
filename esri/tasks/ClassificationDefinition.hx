package esri.tasks;

import js.Dom;
/* <i>Class added v2.6</i><br/> The super class for the
        classification definition objects used by the <a href='../jsapi_start.htm#jsapi/Generaterenderertask.htm'>GenerateRendererTask</a>
        class to generate data classes. This class has no constructor. Use <a
        href='../jsapi_start.htm#jsapi/classbreaksdefinition.htm'>ClassBreaksDefinition</a>
        or <a href='../jsapi_start.htm#jsapi/uniquevaluedefinition.htm'>UniqueValueDefinition</a>
        instead.*/
@native ("esri.tasks.ClassificationDefinition")
extern class ClassificationDefinition {
	/* Define a default symbol for the classification. If a <code>baseSymbol</code>
            is not defined then a default symbol is created based on the geometryType
            of the layer.*/
	public var baseSymbol:esri.symbol.Symbol;
	/* Define a color ramp for the classification. If a <code>colorRamp</code>
            is not defined then a default color ramp will be used to assign a color
            to each class.*/
	public var colorRamp:AlgorithmicColorRamp;
	/* The type of classification definition. <br/>Known values: uniqueValueDef
            | classBreaksDef*/
	public var type:String;

}