# OptionParser::Arguable#getopts

### def getopts(short_opt, *long_opt, symbolize_names: false, exact: options.require_exact)    -> Hash

指定された short_opt や long_opt に応じて自身をパースし、結果を Hash として返します。

コマンドラインに - もしくは -- を指定した場合、それ以降の解析を行ないません。

`symbolize_names` と `exact` 以外のキーワード引数を渡しても無視されます([ArgumentError](../../../class/ArgumentError.md) は発生しません)。


- **param** `short_opt` -- ショートネームのオプション(-f や -fx)を文字列で指定します。オプションが -f と -x の
                 2つの場合は "fx" の様に指定します。ここでオプションがないときは空文字列を指定します。
                 オプションが引数をとる場合は直後に ":" を付けます。

- **param** `long_opt` -- ロングネームのオプション(--version や --bufsize=512)を文字列で指定をします。
                オプションが引数をとる場合は後ろに ":" を付けます。
                オプションの引数のデフォルト値を ":" の直後に指定できます。
                例えば、"bufsize:1024" となります。

- **param** `symbolize_names` -- true を指定すると、戻り値の Hash はキーがシンボルになります。false を指定した場合、戻り値の Hash はキーが文字列になります。

- **param** `exact` -- 真を指定すると、ロングオプションを省略した形([OptionParser#require_exact](../../../method/OptionParser/i/require_exact.md) を参照)を受け付けなくなります。省略時は [OptionParser#require_exact](../../../method/OptionParser/i/require_exact.md) の値です。

- **raise** `OptionParser::ParseError` -- 自身のパースに失敗した場合、発生します。
                                実際は OptionParser::ParseError のサブクラスの例外になります。

```ruby title="t.rb"
require 'optparse'
params = ARGV.getopts("ab:", "foo", "bar:", "bufsize:1024")
p params
```

```console
# 実行結果
$ ruby t.rb -b 1 --foo  --bar xxx -- -a
{"bufsize" => "1024", "a" => false, "b" => "1", "foo" => true, "bar" => "xxx"}  # "a" => false であることに注意。
```
