# OptionParser::ParseError#additional=

### def additional -> object | nil
{: since="2.7.0"}
### def additional=(additional)
{: since="2.7.0"}

`self` のエラーメッセージに追加する情報を作る、呼び出し可能オブジェクトです。

[OptionParser::ParseError#message](../../../method/OptionParser=3a=3aParseError/i/message.md) は、この値が nil でなければ、
エラーの原因となった引数を渡してこれを呼び出し、その結果をエラーメッセージの末尾に追加します。
デフォルトは nil です。[OptionParser#parse](../../../method/OptionParser/i/parse.md) などのパース時に発生する例外では、
綴りの近い候補を提示するメッセージを組み立てる [Proc](../../../class/Proc.md) が自動的に設定されます。

- **param** `additional` -- エラーメッセージに追加する情報を作る、呼び出し可能オブジェクトを指定します。

```ruby
require "optparse"

opts = OptionParser.new
opts.on("--foobar")
begin
  opts.parse!(["--foobaz"])
rescue OptionParser::ParseError => e
  e.additional = proc {|arg| " (hint for #{arg})" }
  puts e.message   # => invalid option: --foobaz (hint for foobaz)
end
```

- **SEE** [OptionParser::ParseError#message](../../../method/OptionParser=3a=3aParseError/i/message.md)
