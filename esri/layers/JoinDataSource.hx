package esri.layers;

import js.Dom;
/* <i>Class added v2.7</i><br/><p>The JoinDataSource
        class defines and provides information about the result of a join operation.
        Nested joins are supported and are created by specifying either the <code>leftTableSource</code>
        or <code>rightTableSource</code> to be the joined table. </p>
        <p>The output type is determined by the <code>leftTableSource</code>.
        If the <code>leftTableSource</code> is a table then the resulting
        join table is a table. If the <code>leftTableSource</code>
        is a layer then the join result will be a layer. For the best performance,
        the left and right table sources should point to the same workspace and
        the table keys should be indexed.</p>*/
@native ("esri.layers.JoinDataSource")
extern class JoinDataSource {
	/* The type of join that will be performed. <br/>Known values: left-outer
            | left-inner*/
	public var joinType:String;
	/* The key field used for the left table source for the join.*/
	public var leftTableKey:String;
	/* The data source to be used as the left table for the join operation. Determines
            the output join table type. If the leftTableSource is a table then the
            output is a table. If the leftDataSource is a layer then the resulting
            join table is a layer.*/
	public var leftTableSource:LayerMapSource;
	/* The key field used for the right table source for the join.*/
	public var rightTableKey:String;
	/* The data source to be used as the right table for the join operation.*/
	public var rightTableSource:LayerMapSource;


	/* Converts object to its ArcGIS Server JSON representation.*/
	public function toJson():Dynamic;
	function new(?json:Dynamic):Void;
}