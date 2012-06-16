package esri.layers;

import js.Dom;
/* <i>Class added v2.0.</i><br/><pre class='prettyprint'>dojo.require("esri.layers.FeatureLayer");</pre>
        <p>The feature layer inherits from the graphics layer and can be
        used to display features from a single layer in either a Map Service or
        Feature Service. The layer can be either a (spatial) layer or (non-spatial)
        table. If the underlying layer (or table) is from a Feature Service, its
        features can be edited. </p> <p>The FeatureLayer will, by default,
        use the drawing information (symbology and domains) from the server (requires
        ArcGIS Server 10 or above). Note that the ArcGIS Desktop and Server uses
        symbol sizes in Point values, while the ArcGIS API for JavaScript uses
        pixels. Thus, a point that is setup to be 10 "points" in your
        mxd, will have a symbol that is 13 pixels (based on the assumed 96 dpi)
        in your application.</p>*/
@native ("esri.layers.FeatureLayer")
extern class FeatureLayer {
	/* <p>In on-demand mode, the feature layer retrieves features from
            the server when needed based on the requirements defined in the following
            properties:</p> <ul> <li>Map properties such as the current
            spatial extent and time extent.</li> <li>Layer properties such
            as time offset and definition expression.</li> </ul>*/
	public static var MODE_ONDEMAND:String;
	/* <p>In selection mode, features are retrieved from the server only
            when they are selected. Features are available on the client only while
            they are selected. To work with selected features: <ol> <li>Call
            the selectFeatures method.</li> <li>Listen for the onSelectionComplete
            event.</li> <li>Once onSelectionComplete fires, retrieve the
            selected features using the getSelectedFeatures method.</li> </ol></p>
            <p>When editing feature layers in selection mode, you will need to
            add the map service associated with the feature service to the map as a
            dynamic map service. After modifying features, listen for the onEditsComplete
            event and manually refresh the associated dynamic map service layer so
            the modified features are rendered. If you do not have the map service
            added as a dynamic map service then the changes will not be visible because
            once the edits are complete the feature is no longer selected.</p>*/
	public static var MODE_SELECTION:String;
	/* In snapshot mode, the feature layer retrieves all the features from the
            associated layer resource and displays them as graphics on the client.
            Definition expressions and time definitions are honored. The features are
            retrieved once the feature layer is added to the map. After the onUpdateEnd
            event has fired, you can access the features using the graphics property
            of the layer or through selection and query operations.*/
	public static var MODE_SNAPSHOT:String;
	/* The popup displays content in HTML/TEXT*/
	public static var POPUP_HTML_TEXT:String;
	/* No popup type defined*/
	public static var POPUP_NONE:String;
	/* The popup displays the contents of a URL.*/
	public static var POPUP_URL:String;
	/* Adds features to the current selection set*/
	public static var SELECTION_ADD:String;
	/* Creates a new selection.*/
	public static var SELECTION_NEW:String;
	/* Removes features from the current selection*/
	public static var SELECTION_SUBTRACT:String;
	/* Information about the capabilities enabled for this layer.*/
	public var capabilities:String;
	/* Copyright information for the layer.*/
	public var copyright:String;
	/* Metadata describing the default definition expression for the layer as
            defined by the service. The default definition expression limits the features
            available for display and query. You cannot override this value but you
            define additional filters on the default expression using the setDefinitionExpression
            method. For example, if the default definition expression is set to display
            data where "STATE_NAME = 'California'" you could use
            setDefinitionExpression to only display a subset of the features in California
            e.g., "COUNTY='San Diego'".*/
	public var defaultDefinitionExpression:String;
	/* The description of the layer as defined in the map service.*/
	public var description:String;
	/* The name of the layer's primary display field. The value of this
            property matches the name of one of the fields of the layer.*/
	public var displayField:String;
	/* Indicates the field names for the editor fields. If ownership based access
            control is not enabled for the feature service the value will be null.
            The object has the following properties: <pre> { &lt;String&gt;
            creatorField, &lt;String&gt; creationDateField, &lt;String&gt;
            editorField, &lt;String&gt; editDateField } </pre> <i>Requires
            ArcGIS Server feature service version 10.1 or greater.</i>*/
	public var editFieldsInfo:Dynamic;
	/* The array of fields in the layer.*/
	public var fields:Array <esri.layers.Field>;
	/* The full extent of the layer.*/
	public var fullExtent:esri.geometry.Extent;
	/* Geometry type of the features in the layer. Can be one of the following:
            "esriGeometryPoint", "esriGeometryPolygon" or "esriGeometryPolyline".*/
	public var geometryType:String;
	/* The globalIdField for the layer.*/
	public var globalIdField:String;
	/* Array of features in the layer.*/
	public var graphics:Array <esri.Graphic>;
	/* <p>True if attachments are enabled on the feature layer. Use the
            queryAttachmentInfos method to determine if the feature has attachments.
            If the layer is editable (isEditable) and supports attachments the following
            operations can be performed.</p> <ul> <li>Add attachments
            to features.</li> <li>Delete existing attachments.</li>
            </ul>*/
	public var hasAttachments:Bool;
	/* The html popup type defined for the layer. View the constants table for
            a list of valid values.*/
	public var htmlPopupType:String;
	/* Unique ID of the layer that the FeatureLayer was constructed against.*/
	public var layerId:Float;
	/* The maximum number of results that will be returned from a query. <i>Requires
            ArcGIS Server version 10.1 or greater.</i>*/
	public var maxRecordCount:Float;
	/* Maximum visible scale for the layer. If the map is zoomed in beyond this
            scale, the layer will not be visible. A value of 0 means that the layer
            does not have a maximum scale.*/
	public var maxScale:Float;
	/* Minimum visible scale for the layer. If the map is zoomed out beyond this
            scale, the layer will not be visible. A value of 0 means that the layer
            does not have a minimum scale.*/
	public var minScale:Float;
	/* The name of the layer as defined in the map service.*/
	public var name:String;
	/* The name of the field that contains the Object ID field for the layer.*/
	public var objectIdField:String;
	/* Indicates the ownership access control configuration. If ownership based
            access control is not enabled for the feature service the value will be
            null. If ownership based access control is not enabled for the feature
            service the value will be null. This object has two properties <code>allowDeleteToOthers</code>
            and <code>allowUpdateToOthers</code>. When true features can
            be deleted or updated by users other than the creator. <pre> { &lt;Boolean&gt;
            allowUpdateToOthers, &lt;Boolean&gt; allowDeleteToOthers } </pre>*/
	public var ownershipBasedAccessControlForFeatures:Dynamic;
	/* <p>Each element in the array is an object that describes the layer's
            relationship with another layer or table. Use the queryRelatedFeatures
            method to retrieve features or records related to a feature in this layer.
            The object has the following properties:</p> <Table CLASS="detailTABLE">
            <tr> <td class="detailTABLE"> &lt;Number>
            <B>id</B> </td> <td class="detailTABLE">
            Unique ID for the relationship </td> </tr> <tr> <td
            class="detailTABLE"> &lt;String> <B>name</B>
            </td> <td class="detailTABLE"> Name of the relationship.
            </td> </tr> <tr> <td class="detailTABLE">
            &lt;Number> <B>relatedTableId</B> </td> <td
            class="detailTABLE"> Unique ID of the related table or layer
            </td> </tr> </table>*/
	public var relationships:Array <Dynamic>;
	/* The renderer for the layer.*/
	public var renderer:esri.renderer.Renderer;
	/* The dynamic layer or table source.*/
	public var source:LayerMapSource;
	/* When true, the layer supports <code>orderByFields</code> in
            a query operation. <i>Requires ArcGIS Server service version 10.1
            or greater</i>*/
	public var supportsAdvancedQueries:Bool;
	/* When true, the layer supports statistical functions in query operations.
            <i>Requires ArcGIS Server service version 10.1 or greater</i>*/
	public var supportsStatistics:Bool;
	/* An array of feature templates defined in the Feature Service layer. Only
            applicable for ArcGIS Server Feature Service layers.*/
	public var templates:Array <esri.layers.FeatureTemplate>;
	/* Time information for the layer, such as start time field, end time field,
            track id field, layers time extent and the draw time interval. Only applicable
            if the layer is time aware.*/
	public var timeInfo:esri.layers.TimeInfo;
	/* Specifies the type of layer. Can be "Feature Layer" or "Table".*/
	public var type:String;
	/* The field that represents the Type ID field. Only applicable for ArcGIS
            Server Feature Service layers.*/
	public var typeIdField:String;
	/* An array of sub types defined in the Feature Service layer. Only applicable
            for ArcGIS Server Feature Service layers.*/
	public var types:Array <esri.layers.FeatureType>;
	/* The version of ArcGIS Server where the layer is published. Examples are
            9.3, 9.31, 10.*/
	public var version:Float;


	/* Add an attachment to the feature specified by the ObjectId. Only applicable
            if <a href="featurelayer.htm#iseditable">isEditable</a>
            and <a href="featurelayer.htm#hasattachments">hasAttachments</a>
            are true.*/
	public function addAttachment(objectId:Float,formNode:js.FormElement,?_callback:Dynamic->Void,?errback:Dynamic->Void):Dynamic;

	/* Apply edits to the feature layer. Only applicable for layers in a feature
            service.*/
	public function applyEdits(?adds:Array <esri.Graphic>,?updates:Array <esri.Graphic>,?deletes:Array <esri.Graphic>,?_callback:Dynamic->Void,?errback:Dynamic->Void):Dynamic;

	/* Clears the current selection.*/
	public function clearSelection():esri.layers.FeatureLayer;

	/* Delete one or more attachments for the feature specified by the input
            ObjectId. Only applicable if <a href="featurelayer.htm#iseditable">isEditable</a>
            and <a href="featurelayer.htm#hasattachments">hasAttachments</a>
            are true.*/
	public function deleteAttachments(objectId:Float,attachmentIds:Array <Float>,?_callback:Dynamic->Void,?errback:Dynamic->Void):Dynamic;

	/* Returns the current definition expression.*/
	public function getDefinitionExpression():String;

	/* Returns an object that describes the edit capabilities of the layer. The
            returned object has the following properties: <table class='detailTABLE'>
            <tr> <td class='detailTABLE'>&lt;Boolean&gt;
            canCreate</td> <td class='detailTABLE'>When true,
            new features can be created.</td> </tr> <tr> <td class='detailTABLE'>&lt;Boolean&gt;
            canUpdate</td> <td class='detailTABLE'>When true,
            existing features can be updated.</td> </tr> <tr> <td
            class='detailTABLE'>&lt;Boolean&gt; canDelete</td>
            <td class='detailTABLE'>When true, features can be deleted.</td>
            </tr> </table>*/
	public function getEditCapabilities(?options:Dynamic):Dynamic;

	/* Returns the current value of the maxAllowableOffset used by the layer.
            For non-editable layers in on-demand mode if <code>autoGeneralize</code>
            is enabled the maxAllowableOffset is set to the current map resolution.*/
	public function getMaxAllowableOffset():Float;

	/* Gets the currently selected features.*/
	public function getSelectedFeatures():Array <esri.Graphic>;

	/* Gets the current selection symbol.*/
	public function getSelectionSymbol():esri.symbol.Symbol;

	/* Get the current time definition applied to the feature layer.*/
	public function getTimeDefinition():esri.TimeExtent;

	/* <p>Returns true if the FeatureLayer is editable. If the layer is
            editable the following operations can be performed.</p> <ul>
            <li>Add new features.</li> <li>Modify the geometry and
            attributes of existing features.</li> <li>Delete features.</li>
            </ul>*/
	public function isEditable():Bool;

	/* Query for information about attachments associated with the specified
            ObjectIds.*/
	public function queryAttachmentInfos(objectId:Float,?_callback:Dynamic->Void,?errback:Dynamic->Void):Dynamic;

	/* Get a count of the number of features that satisfy the input query. Valid
            only for layers published using ArcGIS Server 10 SP1 or greater. Layers
            published with earlier versions of ArcGIS Server return an error to the
            error callback.*/
	public function queryCount(query:esri.tasks.Query,?_callback:Dynamic->Void,?errback:Dynamic->Void):Dynamic;

	/* Query features from the feature layer. Layer definition and time definition
            are honored. Whenever possible the feature layer will perform the query
            on the client.*/
	public function queryFeatures(query:esri.tasks.Query,?_callback:Dynamic->Void,?errback:Dynamic->Void):Dynamic;

	/* Query for ObjectIds. There is no limit on the number of ObjectIds that
            are returned from the server. Like queryFeatures this operation will perform
            queries on the client (browser) whenever possible. Valid only for layers
            published using ArcGIS Server 10 SP1 or greater.*/
	public function queryIds(query:esri.tasks.Query,?_callback:Dynamic->Void,?errback:Dynamic->Void):Dynamic;

	/* Query features or records, from another layer or table, related to features
            in this layer.*/
	public function queryRelatedFeatures(relQuery:esri.tasks.RelationshipQuery,?_callback:Dynamic->Void,?errback:Dynamic->Void):Dynamic;

	/* Refreshes the features in the feature layer. The feature layer requeries
            all the features in the service, except the selected features, and updates
            itself.*/
	public function refresh():Void;

	/* Selects features from the FeatureLayer. Layer properties like layer definition
            and time definition are honored. The selection method defines how query
            results are passed to the selection. The feature layer will highlight the
            current selection if a selection symbol has been defined. Whenever possible,
            the feature layer will perform the query operation on the client (browser).*/
	public function selectFeatures(query:esri.tasks.Query,?selectionMethod:Float,?_callback:Dynamic->Void,?errback:Dynamic->Void):Dynamic;

	/* Enable or disable auto generalization for the layer. Note that auto generalization
            is only applicable to non-editable feature layers in on-demand mode.*/
	public function setAutoGeneralize(enable:Bool):esri.layers.FeatureLayer;

	/* <p>Set's the definition expression for the FeatureLayer. Only
            the features that match the definition expression are displayed. A definition
            expression limits the features available for display and queries by applying
            constraints to the layer's attribute fields. Setting a definition
            expression is useful when the dataset is large and you don't want
            to bring everything to the client for analysis. This method is typically
            called before adding the layer to the map. If the method is called after
            the layer is added to the map the layer will refresh itself to reflect
            the new definition expression.</p> <p>This definition expression
            is combined with the layer's default definition expression which results
            in a further restriction of the layer.</p>*/
	public function setDefinitionExpression(expression:String):esri.layers.FeatureLayer;

	/* Set the editability of feature layers created from a feature collection.
            This method is only valid for feature layers created from feature collections.
            <p>When the feature layer's editability is updated the <code>onCapabilitiesChange</code>
            event is fired. Use the <code>isEditable</code> method to determine
            if the layer is editable. </p>*/
	public function setEditable(editable:Bool):esri.layers.FeatureLayer;

	/* Set the layer's data source to the specified geodatabase version.
            If the versionName is null then the data source will be the published map's
            default version. Only applicable if the layer's data source is registered
            as versioned in SDE. Only valid with ArcGIS Server services version 10.1
            or greater.*/
	public function setGDBVersion(versionName:String):esri.layers.FeatureLayer;

	/* Specify or change the info template for a layer.*/
	public function setInfoTemplate(infoTemplate:esri.InfoTemplate):Void;

	/* Sets the maximum allowable offset used when generalizing geometries.*/
	public function setMaxAllowableOffset(offset:Float):Void;

	/* Initial opacity or transparency of layer. Not supported in Internet Explorer.*/
	public function setOpacity(opacity:Float):Void;

	/* Set the renderer for the feature layer.*/
	public function setRenderer(renderer:esri.renderer.Renderer):Void;

	/* Set the scale range for the layer. If minScale and maxScale are set to
            0 then the layer will be visible at all scales.*/
	public function setScaleRange(minScale:Float,maxScale:Float):Void;

	/* Set's the selection symbol for the feature layer. If no symbol is
            specified, features are drawn using the layer's renderer.*/
	public function setSelectionSymbol(symbol:esri.symbol.Symbol):esri.layers.FeatureLayer;

	/* <p>Set's the time definition for the feature layer. A time
            definition temporarily filters the features in the layer to match the specified
            time extent. Only applicable for time-aware layers. Only supported when
            the feature layer is in snapshot mode. </p> <p>In addition
            to time definition, time-aware layers also support the time extent set
            on the map. Time-aware layers automatically update when the map's
            time extent is changed, similar to how layers react when the map's
            spatial reference is modified. If a layer's time definition is set
            to display features between 1970 and 1975 and the map has a time extent
            set to 1972-1980, the effective time on the feature layer will be 1972-1975
            </p>*/
	public function setTimeDefinition(definition:esri.TimeExtent):esri.layers.FeatureLayer;

	/* <p>Time offset allows you to display the features at a different
            time so they can be overlaid on top of previous or future time periods.
            For example, to visualize the growth pattern of two wild fires that happened
            in two different years, one of the layers can be given an offset that will
            cause it to appear as if the fire started at the same time as the other
            fire. Note that the offset does not change the temporal component of the
            data itself and has no effect if the layer is not time aware.</p>
            <p>Example: If a layer has data recorded for the year 1970, an offset
            value of 2 years would temporarily shift the data to 1972 (for display
            purposes only, query and selection are not affected by offset).</p>*/
	public function setTimeOffset(offsetValue:Float,offsetUnits:String):esri.layers.FeatureLayer;

	/* Determine if the layer will update its content based on the map's
            current time extent. Default value is true.*/
	public function setUseMapTime(update:Bool):Void;

	/* <p>Returns an easily serializable object representation of the layer.
            Regardless of the layer's mode of operation, only features currently
            available on the client are included.</p> <pre class='prettyprint'>
            { layerDefinition: &lt;Object>, featureSet: { features:&lt;Object[]>
            } } </pre>*/
	public function toJson():Dynamic;
	@:overload(function (featureCollectionObject:Dynamic,?options:Dynamic):Void{})
	@:overload(function (url:String,?options:Dynamic):Void{})
	function new(url:String,?options:Dynamic):Void;
}