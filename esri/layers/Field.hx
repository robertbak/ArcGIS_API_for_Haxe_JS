package esri.layers;

import js.Dom;
/* <i>Class added v2.0.</i><br/><br/> Information
        about each field in a layer.*/
@native ("esri.layers.Field")
extern class Field {
	/* The alias name for the field.*/
	public var alias:String;
	/* Domain associated with the field.*/
	public var domain:esri.layers.Domain;
	/* Indicates whether the field is editable.*/
	public var editable:Bool;
	/* The field length*/
	public var length:Float;
	/* The name of the field.*/
	public var name:String;
	/* Indicates if the field can accept null values. <i>Requires ArcGIS
            Server version 10.1 or greater.</i>*/
	public var nullable:Bool;
	/* <p>The data type of the field. </p>Can be one of the following:
            "esriFieldTypeSmallInteger", "esriFieldTypeInteger",
            "esriFieldTypeSingle", "esriFieldTypeDouble", "esriFieldTypeString",
            "esriFieldTypeDate", "esriFieldTypeOID", "esriFieldTypeGeometry",
            "esriFieldTypeBlob", "esriFieldTypeRaster", "esriFieldTypeGUID",
            "esriFieldTypeGlobalID", "esriFieldTypeXML"*/
	public var type:String;

}