# rb_define_class_under

### VALUE rb_define_class_under(VALUE outer, const char *name, VALUE super)

super のサブクラスとして新しい Ruby クラスを、outer の定数として定義して返します。

- **param** `outer` -- 定義するクラスが定数として所属するクラス

- **param** `name` -- クラス名

- **param** `super` -- 継承元のクラス。NULL を指定した場合は [Object](../class/Object.md) クラス

- **raise** `TypeError` -- 引数 name と同じ名前の定数が既に存在し、それが
                 [Class](../class/Class.md) オブジェクトではない場合に発生します。

- **raise** `TypeError` -- 定義済みのクラスと継承元のクラスが一致しない場合に発生
                 します。
