package esri.tasks;

import js.Dom;
/* Executes a query operation on a layer resource of a map service exposed
        by the ArcGIS Server REST API.*/
@native ("esri.tasks.QueryTask")
extern class QueryTask {
	/* URL to the ArcGIS Server REST resource that represents a map service layer.
            To obtain the URL, use <a href="../jshelp/ags_rest.htm">Services
            Directory</a>.*/
	public var url:String;


	/* Executes a <a href="query.htm">Query</a> against
            an ArcGIS Server map layer. The result is returned as a <a href="featureset.htm">FeatureSet</a>.
            If the query is successful, the user-specified callback function is invoked
            with the result. A <a href="featureset.htm">FeatureSet</a>
            contains an array of <a href="graphic.htm">Graphic</a>
            features, which can be added to the map using <a href="map.htm#graphics">Map.graphics.add()</a>.
            This array will not be populated if no results are found.<br/><br/>The
            return object of <code>dojo.Deferred</code> was added at v1.4.*/
	public function execute(parameters:esri.tasks.Query,?_callback:Dynamic->Void,?errback:Dynamic->Void):Dynamic;

	/* Get a count of the number of features that satisfy the input query. Valid
            only for layers published using ArcGIS Server 10 SP1 or greater. Layers
            published with earlier versions of ArcGIS Server return an error to the
            error callback.*/
	public function executeForCount(query:esri.tasks.Query,?_callback:Dynamic->Void,?errback:Dynamic->Void):Dynamic;

	/* Executes a <a href="query.htm">Query</a> against
            an ArcGIS Server map layer. The result is returned as a <a href="featureset.htm">FeatureSet</a>.
            If the query is successful, the user-specified callback function is invoked
            with the result. A <a href="featureset.htm">FeatureSet</a>
            contains an array of <a href="graphic.htm">Graphic</a>
            features, which can be added to the map using <a href="map.htm#graphics">Map.graphics.add()</a>.
            This array will not be populated if no results are found.<br/><br/>The
            return object of <code>dojo.Deferred</code> was added at v1.4.*/
	public function executeForIds(parameters:esri.tasks.Query,?_callback:Dynamic->Void,?errback:Dynamic->Void):Dynamic;

	/* Executes a <a href="query.htm">Query</a> against
            an ArcGIS Server map layer. The result is returned as a <a href="featureset.htm">FeatureSet</a>.
            If the query is successful, the user-specified callback function is invoked
            with the result. A <a href="featureset.htm">FeatureSet</a>
            contains an array of <a href="graphic.htm">Graphic</a>
            features, which can be added to the map using <a href="map.htm#graphics">Map.graphics.add()</a>.
            This array will not be populated if no results are found.<br/><br/>The
            return object of <code>dojo.Deferred</code> was added at v1.4.*/
	public function executeRelationshipQuery(parameters:esri.tasks.Query,?_callback:Dynamic->Void,?errback:Dynamic->Void):Dynamic;
	function new(url:String,?options:Dynamic):Void;
}