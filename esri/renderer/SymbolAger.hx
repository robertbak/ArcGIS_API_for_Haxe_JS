package esri.renderer;

import js.Dom;
/* <i>Class added v2.0.</i><br/><br/> Base class
        for agers. Determine the symbology used to represent the aging of features
        in a feature layer.*/
@native ("esri.renderer.SymbolAger")
extern class SymbolAger {


	/* All subclasses override this method to provide their own implementation
            to calculate aging and return the appropriate symbol.*/
	public function getAgedSymbol(symbol:esri.symbol.Symbol,graphic:esri.Graphic):esri.symbol.Symbol;
}