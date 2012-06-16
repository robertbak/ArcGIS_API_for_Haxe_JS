package esri.tasks;

import js.Dom;
/* <i>Class added v2.6</i><br/> Define a class breaks classification
        scheme used by the <a href='../jsapi_start.htm#jsapi/generatedatatask.htm'>GenerateDataTask</a>
        to generate classes. Class breaks renderers symbolize data based on the
        value of a numeric attribute. Data with similar values for the attribute
        use the same symbol.*/
@native ("esri.tasks.ClassBreaksDefinition")
extern class ClassBreaksDefinition {
	/* Define a default symbol for the classification. If a <code>baseSymbol</code>
            is not defined then a default symbol is created based on the geometryType
            of the layer.*/
	public var baseSymbol:esri.symbol.Symbol;
	/* The number of class breaks.*/
	public var breakCount:Float;
	/* The name of the field used to match values.*/
	public var classificationField:String;
	/* The name of the classification method. <br/>Known values: natural-breaks
            | equal-interval | quantile | standard-deviation | geometrical-interval*/
	public var classificationMethod:String;
	/* Define a color ramp for the classification. If a <code>colorRamp</code>
            is not defined then a default color ramp will be used to assign a color
            to each class.*/
	public var colorRamp:AlgorithmicColorRamp;
	/* The name of the field that contains the values used to normalize class
            breaks when <code>normalizationType</code> is set to 'field'.*/
	public var normalizationField:String;
	/* The type of normalization used to normalize class breaks. <br/>Known
            values: field | log | percent-of-total*/
	public var normalizationType:String;
	/* The standard deviation interval. When <code>standardDeviationInterval</code>
            is specified <code>breakCount</code> is ignored. Only valid
            when the <code>classificationMethod</code> is set to 'standard-deviation'.
            <br/>Known values: 1 | 0.5 | 0.33 | 0.25*/
	public var standardDeviationInterval:Float;


	/* Returns an easily serializable object representation of the class breaks
            definition.*/
	public function toJson():Dynamic;
	function new():Void;
}