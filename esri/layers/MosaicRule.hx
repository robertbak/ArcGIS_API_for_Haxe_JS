package esri.layers;

import js.Dom;
/* <i>Class added v2.0.</i><br/><br/><p> Specifies
        the mosaic rule when defining how individual images should be mosaicked.
        It specifies selection, mosaic method, sort order, overlapping pixel resolution,
        etc. Mosaic rules are for mosaicking rasters in the mosaic dataset. A mosaic
        rule is used to define:</p> <p> <ul> <li>The selection
        of rasters that will participate in the mosaic (using where clause).</li>
        <li>The mosaic method, e.g. how the selected rasters are ordered.</li>
        <li>The mosaic operation, e.g. how overlapping pixels at the same
        location are resolved.</li> </ul> </p>*/
@native ("esri.layers.MosaicRule")
extern class MosaicRule {
	/* Sorts rasters based on an attribute field and its difference from a base
            value. All mosaic operations apply (see operation constants).*/
	public static var METHOD_ATTRIBUTE:String;
	/* Sorts rasters where rasters that have their centers closest to the view
            center or center of view extent are placed on top. All mosaic operations
            apply (see operation constants).*/
	public static var METHOD_CENTER:String;
	/* Specifies that only rasters in the given list of raster Ids participate
            in the mosaic. All mosaic operations apply (see operation constants).*/
	public static var METHOD_LOCKRASTER:String;
	/* Sorts rasters by the distance between the nadir position and view center.
            This is similar to the METHOD_CENTER but uses the nadir point to a raster,
            which may be different than the center, especially for oblique imagery.
            All mosaic operations apply (see operation constants).*/
	public static var METHOD_NADIR:String;
	/* No mosaic method specified.*/
	public static var METHOD_NONE:String;
	/* Sorts rasters in a view independent way, where rasters with their centers
            most northwest are displayed on top. All mosaic operations apply (see operation
            constants).*/
	public static var METHOD_NORTHWEST:String;
	/* Cuts the raster using the predefined seamline shape. Optional feathering
            is used along the seams. The ordering is predefined during seamline generation.
            The First, Blend, Min, Max and Mean raster operations apply (see operation
            constants).*/
	public static var METHOD_SEAMLINE:String;
	/* Sorts rasters based on a user-defined viewpoint location and nadir location.
            All mosaic operations apply (see operation constants).*/
	public static var METHOD_VIEWPOINT:String;
	/* Takes the blended value of all overlapping pixels.*/
	public static var OPERATION_BLEND:String;
	/* Takes the first value of all overlapping pixels.*/
	public static var OPERATION_FIRST:String;
	/* Takes the last value of all overlapping pixels.*/
	public static var OPERATION_LAST:String;
	/* Takes the maximum value of all overlapping pixels.*/
	public static var OPERATION_MAX:String;
	/* Takes the mean value of all overlapping pixels.*/
	public static var OPERATION_MEAN:String;
	/* Takes the minimum value of all overlapping pixels.*/
	public static var OPERATION_MIN:String;
	/* Indicates whether the sort should be ascending or not. This property applies
            to all mosaic methods where an ordering is defined except METHOD_LOCKRASTER
            and METHOD_SEAMLINE.*/
	public var ascending:Bool;
	/* An array of raster Ids. All the rasters with the given list of raster
            Ids are selected to participate in the mosaic. The rasters will be visible
            at all pixel sizes regardless of the minimum and maximum pixel size range
            of the locked rasters.*/
	public var lockRasterIds:Array <Float>;
	/* The mosaic method determines how the selected rasters are ordered. View
            the esri.layers.MosaicRule constants for valid values.*/
	public var method:String;
	/* Defines a selection using a set of ObjectIds. This property applies to
            all mosaic methods.*/
	public var objectIds:Array <Float>;
	/* Defines the mosaic operation used to resolve overlapping pixels. See the
            constants for a list of valid values.*/
	public var operation:String;
	/* The name of the attribute field that is used together with a constant
            sortValue to define the mosaicking order when the mosaic method is set
            to METHOD_ATTRIBUTE. The ordering is defined by the absolute value of the
            difference between the specified sort field value and the sort base value.
            For example, if the sort field is Month and the sort value is 7 (July),
            then the ordering is defined by ABS(Month -7).*/
	public var sortField:String;
	/* A constant value defining a reference or base value for the sort field
            when the mosaic method is set to METHOD_ATTRIBUTE.*/
	public var sortValue:String;
	/* Defines the viewpoint location on which the ordering is defined based
            on the distance from the viewpoint and the nadir of rasters.*/
	public var viewpoint:esri.geometry.Point;
	/* The where clause determines which rasters will participate in the mosaic.
            This property applies to all mosaic methods.*/
	public var where:String;


	/* Returns an easily serializable object representation of the mosaic rule.*/
	public function toJson():Dynamic;
	function new():Void;
}