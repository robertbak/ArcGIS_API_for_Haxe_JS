package esri.layers;

import js.Dom;
/* <i>Class added v2.0.</i><br/><br/> Information
        about the coded values belonging to the domain. Coded value domains specify
        a set of valid values for an attribute.*/
@native ("esri.layers.CodedValueDomain")
extern class CodedValueDomain {
	/* An array of the coded values in the domain. Each object consists of two
            properties: name and code.*/
	public var codedValues:Array <Dynamic>;

}