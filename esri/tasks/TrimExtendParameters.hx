package esri.tasks;

import js.Dom;
/* <i>Class added v2.0.</i><br/><br/>Sets the polylines
        and other parameters for the <a href="geometryservice.htm#trimExtend">trimExtend</a>
        operation.*/
@native ("esri.tasks.TrimExtendParameters")
extern class TrimExtendParameters {
	/* <p>A flag used along with the trimExtend operation.</p> <table
            CLASS="detailTABLE" cellspacing="0" style="font-size:125%">
            <tr> <td class="detailTABLE" width="20%">
            DEFAULT_CURVE_EXTENSION </td> <td class="detailTABLE">
            <p> Default value. The extension considers both ends of the path.
            The old ends remain and new points are added to the extended ends. The
            new points have attributes that are extrapolated from existing adjacent
            segments. </p> </td> </tr> <tr> <td class="detailTABLE"
            width="20%"> RELOCATE_ENDS </td> <td class="detailTABLE">
            <p>When an extension is performed at an end, relocate the end point
            to the new position.</p> </td> </tr> <tr> <td
            class="detailTABLE" width="20%"> KEEP_END_ATTRIBUTES
            </td> <td class="detailTABLE"> <p>When an extension
            is performed at an end, do not extrapolate the end segments attributes
            for the new point. Instead, the attributes will be the same as the current
            end.</p> </td> </tr> <tr> <td class="detailTABLE"
            width="20%"> NO_END_ATTRIBUTES </td> <td class="detailTABLE">
            <p>When an extension is performed at an end, do not extrapolate the
            end segments attributes for the new point. Instead the attributes will
            be empty. </p> </td> </tr> <tr> <td class="detailTABLE"
            width="20%"> NO_EXTEND_AT_FROM </td> <td class="detailTABLE">
            <p>Do not extend the 'from' end of any path.</p>
            </td> </tr> <tr> <td class="detailTABLE"
            width="20%"> NO_EXTEND_AT_TO </td> <td class="detailTABLE">
            <p>Do not extend the 'to' end of any path.</p> </td>
            </tr> </table>*/
	public var extendHow:String;
	/* The array of polylines to trim or extend. The structure of each geometry
            in the array is the same as the structure of the JSON polyline objects
            returned by the ArcGIS REST API.*/
	public var polylines:Array <esri.geometry.Polyline>;
	/* A polyline used as a guide for trimming or extending input polylines.
            The structure of the polyline is the same as the structure of the JSON
            polyline object returned by the ArcGIS REST API.*/
	public var trimExtendTo:esri.geometry.Polyline;

	function new():Void;
}