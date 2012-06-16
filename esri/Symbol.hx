package esri;

import js.Dom;
/* The esri.symbol namespace contains utility methods that are not associated
        with any class.*/
@native ("esri.symbol")
extern class Symbol {


	/* Converts input json into a symbol, returns null if the input json represents
            an unknown or unsupported symbol type. The input json argument typically
            comes from one of the following:<ol><li>Calling the symbol.toJson()
            method <br /> <pre class='prettyprint'>var duplicate
            = esri.symbol.fromjson(simpleMarkerSymbol.toJson());</pre></li><li>Symbol
            object returned from REST.</li></ol>*/
	public static function fromJson():esri.symbol.Symbol;

	/* Returns the shape description properties for the given symbol as defined
            by the <a href="http://docs.dojocampus.org/dojox/gfx" target="_blank">Dojo
            GFX API</a>. Using this method, you can apply ArcGIS symbology to
            shapes or graphics not created within a <a href="graphicslayer.htm">GraphicsLayer</a>.
            <br/><br/> Properties of the returned object include:<br/><br/>
            <table CLASS="detailTABLE" cellspacing="0" >
            <tr> <td class="detailTABLE">&lt;Object> fill</td>
            <td class="detailTABLE">Defines how to fill a shape. The
            properties of this object are described in the <a href="http://docs.dojocampus.org/dojox/gfx#stroke-property"
            target="_blank">dojo documentation</a>. </td>
            </tr> <tr> <td class="detailTABLE">&lt;Object>
            stroke</td> <td class="detailTABLE">An object that
            defines how to draw the outline of a shape. The properties of this object
            are described in the <a href="http://docs.dojocampus.org/dojox/gfx#stroke-property"
            target="_blank">dojo documentation</a>. </td>
            </tr> <tr> <td class="detailTABLE">&lt;Object>
            defaultShape</td> <td class="detailTABLE">An object
            that defines a default geometry for the given symbol. It will always have
            a property named "type" that uniquely identifies the shape. The
            type property can have one of the following values based on the symbol:
            <code><a href="http://docs.dojocampus.org/dojox/gfx#circle"
            target="_blank">circle</a></code>, <code><a
            href="http://docs.dojocampus.org/dojox/gfx#path" target="_blank">path</a></code>,
            or <code><a href="http://docs.dojocampus.org/dojox/gfx#image"
            target="_blank">image</a></code>. It is important
            to note that the geometry defined by this object will always be centered
            at the top-left corner (x = 0, y = 0) of the surface it is attached to.
            </td> </tr> </table><br/> You can quickly create
            a GFX shape with ArcGIS symbology with the help of these descriptors using
            the <a href="http://docs.dojocampus.org/dojox/gfx#surface"
            target="_blank">createShape</a> method of the surface.
            Alternatively, you can choose to change the shape description before creating
            the shape.*/
	public static function getShapeDescriptors():Dynamic;
}