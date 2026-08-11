# Psych.safe_load

### def Psych.safe_load(yaml, permitted_classes: [], permitted_symbols: [], aliases: false, filename: nil, fallback: nil, symbolize_names: false, freeze: false) -> object
### def Psych.safe_load(yaml, legacy_permitted_classes=[], legacy_permitted_symbols=[], legacy_aliases=false, legacy_filename=nil) -> object

安全に YAML フォーマットの文書を読み込み Ruby のオブジェクトを生成して返します。

デフォルトでは以下のクラスのオブジェクトしか変換しません。

- TrueClass
- FalseClass
- NilClass
- Numeric
- String
- Array
- Hash

再帰的なデータ構造はデフォルトでは許可されていません。

任意のクラスを許可するにはキーワード引数 permitted_classes を指定すると、そのクラスが追加されます。例えば Date クラスを許可するには以下のように書いてください:

```ruby title="permitted_classes: に Date を渡した例"
Psych.safe_load(yaml, permitted_classes: [Date])
```

すると上のクラス一覧に加えて Date クラスが読み込まれます。

エイリアスはキーワード引数 aliases を指定することで明示的に許可できます。

```ruby title="aliases: true の例"
x = []
x << x
yaml = Psych.dump x
Psych.safe_load yaml                # ~> Psych::AliasesNotEnabled
p Psych.safe_load yaml, aliases: true # => エイリアスが読み込まれる
```

yaml に許可されていないクラスが含まれていた場合は、
Psych::DisallowedClass 例外が発生します。

yaml がエイリアスを含んでいてキーワード引数 aliases が false の時、
Psych::BadAlias 例外が発生します。

filename はパース中に発生した例外のメッセージに用います。

キーワード引数 symbolize_names に true を指定した場合はハッシュのキーを [Symbol](../../../class/Symbol.md) に変換して返します。

```ruby title="symbolize_names: true の例"
p Psych.safe_load("---\n foo: bar")                       # => {"foo"=>"bar"}
p Psych.safe_load("---\n foo: bar", symbolize_names: true)  # => {:foo=>"bar"}
```

キーワード引数 freeze に true を指定した場合は再帰的に
[Object#freeze](../../../method/Object/i/freeze.md) したオブジェクトを返します。

```ruby title="freeze: true の例"
require "psych"

data = <<~EOS
aaa:
  bbb: [hoge]
EOS

yaml = Psych.load(data, freeze: true)
p yaml
# => {"aaa"=>{"bbb"=>["hoge"]}}
p yaml.frozen?                        # = true
p yaml["aaa"].frozen?                 # = true
p yaml["aaa"]["bbb"].frozen?          # = true
p yaml["aaa"]["bbb"].first.frozen?    # = true
```

また legacy_permitted_classes などのオプション引数は非推奨な引数となっています。
[m:$-w] が true の時にオプション引数を渡すと警告が出力されます。

```ruby title="オプション引数を使用した例"
# warning: Passing permitted_classes with the 2nd argument of Psych.safe_load is deprecated. Use keyword argument like Psych.safe_load(yaml, permitted_classes: ...) instead.
Psych.safe_load("", [Date])
```

- **param** `io` -- YAMLフォーマットの文書の読み込み先のIOオブジェクト。
- **param** `permitted_classes` -- 追加で読み込みを許可するクラスの配列。
- **param** `permitted_symbols` -- 引数 permitted_classesに [Symbol](../../../class/Symbol.md) を含む場合に読み込みを許可する [Symbol](../../../class/Symbol.md) の配列。
                         省略した場合は全ての [Symbol](../../../class/Symbol.md) を許可します。
- **param** `aliases` -- エイリアスの読み込みを許可するかどうか。
- **param** `filename` -- [Psych::SyntaxError](../../../class/Psych=3a=3aSyntaxError.md) 発生時にファイル名として表示する文字列。
- **param** `fallback` -- 引数 yaml に空のYAMLを指定した場合の戻り値を指定します。デフォルトは nil です。
- **param** `symbolize_names` -- ハッシュ(YAMLの仕様では正確にはマッピング)のキーを [Symbol](../../../class/Symbol.md) に変換するかどうかを指定します。
                       true を指定した場合は変換します。デフォルトでは文字列に変換されます。
- **param** `freeze` -- true を指定すると再帰的に freeze されたオブジェクトを返します。
              デフォルトは false です。
