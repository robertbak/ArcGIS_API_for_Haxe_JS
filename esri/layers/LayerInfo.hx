package esri.layers;

import js.Dom;
/* Contains information about each layer in a map service. LayerInfo has
        no constructor.*/
@native ("esri.layers.LayerInfo")
extern class LayerInfo {
	/* Default visibility of the layers in the map service.*/
	public var defaultVisibility:Bool;
	/* Layer ID assigned by ArcGIS Server for a layer. The topmost layer is 0,
            and each layer follows sequentially. If a layer is added or removed from
            the source map document, the ID values will shift accordingly.*/
	public var id:Float;
	/* The maximum visible scale for each layer in the map service. If the map
            is zoomed in beyond this scale the layer will not be visible. A value of
            0 means that the layer does not have a maximum scale. This property is
            only available for map services published using ArcGIS Server 10 SP1 or
            later.*/
	public var maxScale:Float;
	/* The minimum visible scale for each layer in the map service. If the map
            is zoomed out beyond this scale the layer will not be visible. A value
            of 0 means that the layer does not have a minimum scale. This property
            is only available for map services published using ArcGIS Server 10 SP1
            or later.*/
	public var minScale:Float;
	/* Layer name as defined in the map service.*/
	public var name:String;
	/* If the layer is part of a group layer, it will include the parent ID of
            the group layer. Otherwise, the value is -1. If a layer is added or removed
            from the source map document, the ID values will shift accordingly.*/
	public var parentLayerId:Float;
	/* If the layer is a parent layer, it will have one or more sub layers included
            in an array. Otherwise, the value is null. If a layer is added or removed
            from the source map document, the ID values will shift accordingly.*/
	public var subLayerIds:Array <Float>;

}