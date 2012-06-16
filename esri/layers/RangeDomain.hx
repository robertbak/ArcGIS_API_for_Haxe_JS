package esri.layers;

import js.Dom;
/* <i>Class added v2.0.</i><br/><br/> Information
        about the range of values belonging to the domain. Range domains specify
        a valid range of values for a numeric attribute.*/
@native ("esri.layers.RangeDomain")
extern class RangeDomain {
	/* The maximum valid value.*/
	public var maxValue:Float;
	/* The minimum valid value.*/
	public var minValue:Float;

}