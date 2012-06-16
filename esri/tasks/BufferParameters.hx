package esri.tasks;

import js.Dom;
/* Sets the distances, units, and other parameters for a buffer operation.
        Note: <code>features</code> parameter replaced by <code>geometries</code>:
        v2.0*/
@native ("esri.tasks.BufferParameters")
extern class BufferParameters {
	/* The spatial reference in which the geometries are buffered. See <a
            href="../jshelp/pcs.htm">Projected Coordinate Systems</a>
            and <a href="../jshelp/gcs.htm">Geographic Coordinate Systems</a>
            for the list of supported spatial references. <br /><br />
            If <i>bufferSpatialReference</i> is not specified, the geometries
            are buffered in the spatial reference specified by <i>outSpatialReference</i>.
            If <i>outSpatialReference</i> is also not specified, they are
            buffered in the spatial reference of the <i>features</i>.*/
	public var bufferSpatialReference:esri.SpatialReference;
	/* The distances the input <i>features</i> are buffered. The
            distance units are specified by <i>unit</i>.*/
	public var distances:Array <Float>;
	/* If the input geometries are in geographic coordinate system set geodesic
            to true in order to generate a buffer polygon using a geodesic distance.
            The <code>bufferSpatialReference</code> property is ignored
            when geodesic is set to true. Requires ArcGIS Server 10.1 or greater geometry
            service.*/
	public var geodesic:Bool;
	/* The input geometries to buffer.*/
	public var geometries:Array <esri.geometry.Geometry>;
	/* The spatial reference for the returned geometries. See <a href="../jshelp/pcs.htm">Projected
            Coordinate Systems</a> and <a href="../jshelp/gcs.htm">Geographic
            Coordinate Systems</a> for the list of supported spatial references.<br
            /><br /> If <i>outSpatialReference</i> is not specified,
            the output geometries are in the spatial reference specified by <i>bufferSR</i>.
            If <i>bufferSpatialReference</i> is also not specified, they
            are in the spatial reference of the <i>features</i>.*/
	public var outSpatialReference:esri.SpatialReference;
	/* If true, all geometries buffered at a given distance are unioned into
            a single (possibly multipart) polygon, and the unioned geometry is placed
            in the output array. <br/>Known values: true | false*/
	public var unionResults:Bool;
	/* The units for calculating each buffer distance. If <i>unit</i>
            is not specified, the units are derived from <i>bufferSpatialReference</i>.
            If <i>bufferSpatialReference</i> is not specified, the units
            are derived from the <i>features</i>. See the Geometry service
            constants table for values. <!-- <br /><br />For a list
            of valid units, see <a href="http://edndoc.esri.com/arcobjects/9.2/ComponentHelp/esriGeometry/esriSRUnitType.htm"
            target="_blank">esriSRUnitType Constants</a> and <a
            href="http://edndoc.esri.com/arcobjects/9.2/ComponentHelp/esriGeometry/esriSRUnit2Type.htm"
            target="_blank">esriSRUnit2Type Constants</a>. -->*/
	public var unit:String;

	function new():Void;
}