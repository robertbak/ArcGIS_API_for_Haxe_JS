package esri.tasks;

import js.Dom;
/* <i>Class added v2.0.</i><br/><br/> Define query
        parameters for the feature layer's queryRelatedFeatures method.*/
@native ("esri.tasks.RelationshipQuery")
extern class RelationshipQuery {
	/* The definition expression to be applied to the related table or layer.
            Only records that fit the definition expression and are in the list of
            ObjectIds will be returned.*/
	public var definitionExpression:String;
	/* The maximum allowable offset used for generalizing geometries returned
            by the query operation. The offset is in the units of the spatialReference.
            If a spatialReference is not defined the spatial reference of the map is
            used.*/
	public var maxAllowableOffset:Float;
	/* A comma delimited list of ObjectIds for the features in the layer/table
            that you want to query.*/
	public var objectIds:Array <Float>;
	/* Attribute fields to include in the <a href="featureset.htm">FeatureSet</a>.
            Fields must exist in the map layer. You must list the actual field names
            rather than the alias names. Returned fields are also the actual field
            names. However, you are able to use the alias names when you display the
            results. You can set field alias names in the map document. <br/><br/>
            When you specify the output fields, you should limit the fields to only
            those you expect to use in the query or the results. The fewer fields you
            include, the faster the response will be. <br/><br/> Each query
            must have access to the Shape and ObjectId fields for a layer, but your
            list of fields does not need to include these two fields.*/
	public var outFields:Array <String>;
	/* The spatial reference for the returned geometry. If not specified, the
            geometry is returned in the spatial reference of the map. See <a href="../jshelp/pcs.htm">Projected
            Coordinate Systems</a> and <a href="../jshelp/gcs.htm">Geographic
            Coordinate Systems</a> for the list of supported spatial references.*/
	public var outSpatialReference:esri.SpatialReference;
	/* The ID of the relationship to test. The ids for the relationships the
            table or layer participates in are listed in the ArcGIS Services directory.*/
	public var relationshipId:Float;
	/* If "true", each feature in the <a href="featureset.htm">FeatureSet</a>
            includes the geometry. Set to "false" (default) if you do not
            plan to include highlighted features on a map since the geometry makes
            up a significant portion of the response.*/
	public var returnGeometry:Bool;

	function new():Void;
}