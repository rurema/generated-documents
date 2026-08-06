# st_foreach

### void st_foreach(st_table *table, enum st_retval (*func)(), char *arg)

[Hash#each](../method/Hash/i/each.md), delete_if などの実体。ハッシュ内の全てのキーと値、arg を引数にして、func を実行する。func の返り値 enum st_retval は ST_CONTINUE
ST_STOP ST_DELETE のどれか。どれも見ためどおりの働きをする。
