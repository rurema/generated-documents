# Prism?.parse

### module_function def parse(source, **options) -> Prism::ParseResult

Ruby プログラムのソースコード文字列 `source` を構文解析し、結果を
[Prism::ParseResult](../../../class/Prism=3a=3aParseResult.md) として返します。

prism はエラー耐性のあるパーサなので、構文エラーがあっても可能な限り解析を継続し、部分的な構文木を [Prism::ParseResult#value](../../../method/Prism=3a=3aParseResult/i/value.md) に格納します。エラーの有無は [Prism::ParseResult#success?](../../../method/Prism=3a=3aParseResult/i/success=3f.md) や
[Prism::ParseResult#errors](../../../method/Prism=3a=3aParseResult/i/errors.md) で確認できます。

- **param** `source` -- 解析する Ruby プログラムの文字列を指定します。

- **param** `options` -- 解析オプションをキーワード引数で指定します。
       主なものは以下の通りです。

- **`:filepath`**:
  ソースコードのファイルパスを指定します(エラーメッセージなどに使われます)。
- **`:line`**:
  解析を開始する行番号(1 始まり)を指定します。
- **`:encoding`**:
  ソースコードのエンコーディングを指定します。
- **`:scopes`**:
  ソースコードの周囲で定義済みのローカル変数を、シンボルの配列の配列で
  指定します。`eval` のように周囲のローカル変数を引き継いで解析したい
  場合に使います。
- **`:version`**:
  解析に使う Ruby の構文バージョンを文字列(例 `"3.3.0"`)で指定します。
  省略時は最新の構文として解析します。

上記以外にも `:command_line`, `:frozen_string_literal`, `:main_script`,
`:partial_script` などのオプションがあります。利用可能なオプションの完全な一覧は prism のバージョンによって多少異なるため、公式ドキュメントを参照してください。

```ruby title="例"
require "prism"

result = Prism.parse("1 + 2")
p result.class          # => Prism::ParseResult
p result.value.class    # => Prism::ProgramNode
p result.success?       # => true
```

```ruby title="例: 構文エラーがあっても解析を継続する"
require "prism"

result = Prism.parse('"unterminated')
p result.success?              # => false
p result.errors.size           # => 1
p result.errors.first.message  # => "unterminated string meets end of file"
p result.value.class           # => Prism::ProgramNode (エラーがあっても構文木は返る)
```

- **SEE** [Prism::ParseResult](../../../class/Prism=3a=3aParseResult.md)
