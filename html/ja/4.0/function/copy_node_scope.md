# copy_node_scope

### static NODE * copy_node_scope(NODE *node, VALUE rval)

node の先頭についているはずの、ローカル変数スコープを積むための情報を格納したノード NODE_SCOPE をコピーして返します。そのとき nd_rval に rval を格納します。
