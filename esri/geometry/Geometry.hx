package esri.geometry;

import js.Dom;
/* <pre class='prettyprint'>dojo.require("esri.geometry");</pre><br/>The
        base class for geometry objects. This class has no constructor.*/
@native ("esri.geometry.Geometry")
extern class Geometry {
	/* The spatial reference of the geometry. See <a href="../jshelp/pcs.htm">Projected
            Coordinate Systems</a> and <a href="../jshelp/gcs.htm">Geographic
            Coordinate Systems</a> for the list of supported spatial references.*/
	public var spatialReference:esri.SpatialReference;
	/* The type of geometry. <br/>Known values: point | multipoint | polyline
            | polygon | extent*/
	public var type:String;


	/* Sets the spatial reference. <br/><br/> The return value of
              <code>Geometry</code> was added at v1.4.*/
	public function setSpatialReference(sr:esri.SpatialReference):esri.geometry.Geometry;

	/* Converts object to its ArcGIS Server JSON representation.*/
	public function toJson():Dynamic;
}