# OptionParser#parse

### def parse(argv, into: nil, exact: self.require_exact)   -> [String]
### def parse(*args, into: nil, exact: self.require_exact)  -> [String]

与えられた argv をパースします。
argv からオプションを取り除いたものを返します。

[OptionParser#permute](../../../method/OptionParser/i/permute.md) と同様に振舞います。しかし、環境変数に POSIXLY_CORRECT が設定されている場合は、
[OptionParser#order](../../../method/OptionParser/i/order.md) と同様に振舞います。

- **param** `argv` -- パースしたい引数を文字列の配列で指定します。

- **param** `args` -- パースしたい引数を順に文字列として与えます。

- **param** `into` -- オプションを格納するハッシュを指定します。
            指定したハッシュにはオプションの名前をキーとして、[OptionParser#on](../../../method/OptionParser/i/on.md)に渡されたブロックの値が格納されます。
            キーの名前はロングオプションが定義されていればロングオプションの値を、ショートオプションのみの場合はショートオプションの値から、先頭の "-" を除いてシンボル化した値が使用されます。

- **param** `exact` -- 真を指定すると、ロングオプションを省略した形([OptionParser#require_exact](../../../method/OptionParser/i/require_exact.md) を参照)を受け付けなくなります。省略時は [OptionParser#require_exact](../../../method/OptionParser/i/require_exact.md) の値です。

- **raise** `OptionParser::ParseError` -- パースに失敗した場合、発生します。
                                実際は OptionParser::ParseError のサブクラスになります。

```ruby title="例"
require "optparse"

opts = OptionParser.new do |opts|
  opts.on_head("-i", "--init")
  opts.on("-u", "--update")
  opts.on_tail("-h", "--help")
end

p ARGV           # => ["-i", "-u", "-h", "test"]
p opts.parse(ARGV) # => ["test"]
```


```ruby title="例 exact を指定する"
require "optparse"

opts = OptionParser.new
opts.on("--verbose")

p opts.parse(["--verb", "x"])               # => ["x"]
begin
  opts.parse(["--verb", "x"], exact: true)
rescue OptionParser::InvalidOption => e
  puts e.message   # => invalid option: --verb
end
```
