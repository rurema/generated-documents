# Psych::Nodes::Node#to_yaml

### def yaml(io=nil, options={}) -> String | IO
### def to_yaml(io=nil, options={}) -> String | IO

AST を YAML ドキュメントに変換します。

io に [IO](../../../class/IO.md) オブジェクトを指定した場合は、そのオブジェクトに変換後のドキュメントが書き込まれます。
この場合は io を返り値として返します。

io を省略した(nil を指定した)場合には変換後のドキュメントを文字列で返します。

[Psych::Nodes::Stream](../../../class/Psych=3a=3aNodes=3a=3aStream.md) 以外を変換しようとすると、AST として不正であるためエラーが発生します。

options には以下が指定できます。

- **`:version`**:
  YAML document に付加するバージョンを [major, minor] という配列、
  もしくは文字列で指定します
- **`:header`**:
  出力にヘッダを付けるかどうかを真偽値で指定します
- **`:indentation`**:
  インデントのレベルを 1 から 9 までの整数で指定します
- **`:canonical`**:
  出力の style が canonical であるかどうかを真偽値で指定します
- **`:line_width`**:
  「好ましい」行幅を整数値で指定します

- **param** `io` -- 書き込み先の IO
- **param** `options` -- オプション
