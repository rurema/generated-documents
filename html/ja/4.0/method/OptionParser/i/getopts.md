# OptionParser#getopts

### def getopts(argv, *opts, symbolize_names: false, exact: self.require_exact)   -> Hash
### def getopts(*opts, symbolize_names: false, exact: self.require_exact)         -> Hash

引数をパースした結果を、Hash として返します。

配列 argv を与えた場合、argv をパースします。そうでない場合は、
default_argv をパースします。

```ruby
opt = OptionParser.new
params = opt.getopts(ARGV, "ab:", "foo", "bar:")
# params["a"] = true   # -a
# params["b"] = "1"    # -b1
# params["foo"] = true  # --foo
# params["bar"] = "x"  # --bar x
```

`symbolize_names` と `exact` 以外のキーワード引数を渡しても無視されます([ArgumentError](../../../class/ArgumentError.md) は発生しません)。


- **param** `argv` -- パースしたい配列を指定します。

- **param** `opts` -- 引数を文字列で指定します。

- **param** `symbolize_names` -- true を指定すると、戻り値の [Hash](../../../class/Hash.md) はキーがシンボルになります。false を指定した場合、戻り値の [Hash](../../../class/Hash.md) はキーが文字列になります。

- **param** `exact` -- 真を指定すると、ロングオプションを省略した形([OptionParser#require_exact](../../../method/OptionParser/i/require_exact.md) を参照)を受け付けなくなります。省略時は [OptionParser#require_exact](../../../method/OptionParser/i/require_exact.md) の値です。

- **raise** `OptionParser::ParseError` -- パースに失敗した場合、発生します。
                                実際は OptionParser::ParseError のサブクラスになります。
