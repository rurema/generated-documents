# JSON?.unsafe_load

### module_function def unsafe_load(source, proc = nil, options = nil) -> object

与えられた JSON 形式の文字列を Ruby オブジェクトとしてロードして返します。

[JSON?.load](../../../method/JSON/m/load.md) と同様のメソッドですが、こちらは信頼できる入力を読み込むためのメソッドであることを
名前で明示しています。
デフォルトのオプション(`create_additions: true` を含みます)は
`JSON.unsafe_load_default_options` で変更できます。

`source` には JSON 形式の文字列だけでなく、`to_str`, `to_io`, `read` のいずれかに応答するオブジェクト
(File などの [IO](../../../class/IO.md) や、パスを表すオブジェクトなど) も指定でき、その内容を読み込んだ上で
内部的に [JSON?.parse](../../../method/JSON/m/parse.md) を呼び出します。

`proc` として手続きオブジェクトが与えられた場合は、読み込んだ結果を引数にその手続きを呼び出し、
その返り値を最終的な結果とします。

- **param** `source` -- JSON 形式の文字列を指定します。他には、`to_str`, `to_io`, `read` メソッドを持つオブジェクトも指定可能です。
- **param** `proc` -- [Proc](../../../class/Proc.md) オブジェクトを指定します。
- **param** `options` -- オプションをハッシュで指定します。指定可能なオプションは [JSON?.parse](../../../method/JSON/m/parse.md) と同様です。


```ruby title="例"
require "json"
require "json/add/core"

json = (1..5).to_json
p JSON.parse(json).class # => Hash
p JSON.unsafe_load(json) # => 1..5
```


- **SEE** [JSON?.load](../../../method/JSON/m/load.md), [JSON?.parse](../../../method/JSON/m/parse.md)
