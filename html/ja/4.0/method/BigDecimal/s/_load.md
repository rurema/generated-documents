# BigDecimal._load

### def BigDecimal._load(str) -> BigDecimal

引数で指定された文字列を元に [BigDecimal](../../../class/BigDecimal.md) オブジェクトを復元します。
[Marshal?.load](../../../method/Marshal/m/load.md) から呼び出されます。

- **param** `str` -- 復元する値を表す文字列を指定します。

- **raise** `TypeError` -- 引数に不正な文字が含まれる場合に発生します。

- **SEE** [BigDecimal#_dump](../../../method/BigDecimal/i/_dump.md), [Marshal?.dump](../../../method/Marshal/m/dump.md), [Marshal?.load](../../../method/Marshal/m/load.md)
