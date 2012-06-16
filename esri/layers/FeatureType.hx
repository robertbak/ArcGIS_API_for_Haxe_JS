package esri.layers;

import js.Dom;
/* <i>Class added v2.0.</i><br/><br/> A type defined
        by a feature layer.*/
@native ("esri.layers.FeatureType")
extern class FeatureType {
	/* <p>Map of field names to domains. For example:</p> <pre
            class='prettyprint'> { "&lt;field1>" : &lt;domain1>,
            "&lt;field2>" : &lt;domain2> } </pre> <p>In
            the above dictionary, if the domain defined for a field is an instance
            of <a href="inheriteddomain.htm">InheritedDomain</a>
            the application will use the domains defined for the field by the layer.
            If the dictionary does not include an entry for a field, the field does
            not have an associated domain.</p>*/
	public var domains:Dynamic;
	/* The feature type identifier.*/
	public var id:Float;
	/* The feature type name.*/
	public var name:String;
	/* Array of feature templates associated with this feature type.*/
	public var templates:Array <esri.layers.FeatureTemplate>;


	/* Converts object to its ArcGIS Server JSON representation.*/
	public function toJson():Dynamic;
}