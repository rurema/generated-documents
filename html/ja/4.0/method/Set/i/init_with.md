# Set#init_with

### def init_with(coder) -> self

[Psych.load](../../../method/Psych/s/load.md) などによって YAML から `self` を復元するために呼び出されます。

[Set#encode_with](../../../method/Set/i/encode_with.md) によって coder に登録された要素を取り出し、[Set#replace](../../../method/Set/i/replace.md) で `self` の内容をその要素に置き換えます。

- **param** `coder` -- 要素の情報を保持する Psych::Coder オブジェクト
- **SEE** [Set#replace](../../../method/Set/i/replace.md)
