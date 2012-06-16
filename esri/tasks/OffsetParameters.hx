package esri.tasks;

import js.Dom;
/* <i>Class added v2.0.</i><br/><br/> Sets the offset
        distance, type and other parameters for the <a href="geometryservice.htm#offset"
        operation.*/
@native ("esri.tasks.OffsetParameters")
extern class OffsetParameters {
	/* The bevelRatio is multiplied by the offset distance and the result determines
            how far a mitered offset intersection can be located before it is beveled.
            When mitered is specified, the value set for bevelRatio is ignored and
            10 is used internally. If beveled is specified 1.1 will be used if no value
            is set for bevelRatio. The bevelRatio is ignored when rounded is specified.*/
	public var bevelRatio:Float;
	/* The array of geometries to be offset.*/
	public var geometries:Array <esri.geometry.Geometry>;
	/* Specifies the distance for constructing an offset based on the input geometries.
            If the offsetDistance parameter is positive the constructed offset will
            be on the right side of the curve. Left side offsets are constructed with
            negative values.*/
	public var offsetDistance:Float;
	/* <p>Set to one of the following options:</p> <table CLASS="detailTABLE"
            cellspacing="0" style="font-size:125%"> <tr>
            <td class="detailTABLE" width="20%"> esriGeometryOffsetBevelled
            </td> <td class="detailTABLE"> Squares off the corner
            after a given ratio distance. </td> </tr> <tr> <td
            class="detailTABLE" width="20%"> esriGeometryOffsetMitered
            </td> <td class="detailTABLE"> Attempts to allow
            extended offsets to naturally intersect. if the intersection occurs too
            far from a corner, the corner will be beveled off at a fixed distance.
            </td> </tr> <tr> <td class="detailTABLE"
            width="20%"> esriGeometryOffsetRounded </td> <td
            class="detailTABLE"> Rounds the corner between extended offsets.
            </td> </tr> </table>*/
	public var offsetHow:String;
	/* The offset distance unit. For a list of valid units see <a href="http://resources.esri.com/help/9.3/ArcGISDesktop/ArcObjects/esriGeometry/esriSRUnitType.htm">esriSRUnitType</a>
            constants or <a href="http://resources.esri.com/help/9.3/ArcGISDesktop/ArcObjects/esriGeometry/esriSRUnit2Type.htm">esriSRUnit2Type</a>
            constants.*/
	public var offsetUnit:String;

	function new():Void;
}