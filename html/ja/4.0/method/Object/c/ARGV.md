# Object::ARGV

### const ARGV -> Array

Ruby スクリプトに与えられた引数を表す配列です。

組み込み変数 [m:$*] の別名です。
Ruby 自身に対する引数は取り除かれています。

例:

スクリプト argv.rb の内容が

```ruby
p ARGV
```

であったとします。このときシェルから次を実行すると、

```console
$ ruby argv.rb foo bar baz
```

結果は以下のように出力されます。

```text
["foo", "bar", "baz"]
```

### const ARGV -> Array

Ruby スクリプトに与えられた引数を表す配列です。

[optparse](../../../library/optparse.md) を require することにより、ARGV は
OptionParser::Arguable を [Object#extend](../../../method/Object/i/extend.md) します。

- **SEE** [OptionParser::Arguable](../../../class/OptionParser=3a=3aArguable.md)
