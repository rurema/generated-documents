# Net::POP3.start

### def Net::POP3.start(address, port = nil, account=nil, password=nil, isapop=false) -> Net::POP3
### def Net::POP3.start(address, port = nil, account=nil, password=nil, isapop=false) {|pop| .... } -> object

[Net::POP3](../../../class/Net=3a=3aPOP3.md) オブジェクトを生成し、サーバへ接続します。

ブロックを与えない場合には生成したオブジェクトを返します。

ブロックを与えた場合には、生成した [Net::POP3](../../../class/Net=3a=3aPOP3.md) オブジェクトがブロックに渡され、ブロックが終わったときにセッションを終了させます。
この場合返り値はブロックの返り値となります。

port に nil を渡すと、適当なポート(通常は110、SSL利用時には 995)を使います。

以下のコードと同じ動作をします。

```ruby
require 'net/pop'

Net::POP3.new(address, port, isapop).start(account, password)
```

```ruby title="使用例"
require 'net/pop'

Net::POP3.start(addr, port, account, password) {|pop|
  pop.each_mail do |m|
    file.write m.pop
    m.delete
  end
}
```

- **param** `address` -- POP3サーバのホスト名文字列
- **param** `port` -- 接続するPOP3サーバのポート番号
- **param** `account` -- アカウント名文字列
- **param** `password` -- パスワード文字列
- **param** `isapop` -- 真でAPOPを利用します

- **raise** `TimeoutError` -- 接続がタイムアウトした場合に発生します
- **raise** `Net::POPAuthenticationError` -- 認証に失敗した、もしくはAPOPを利用しようとしたがサーバがAPOPを提供していない場合に発生します
- **raise** `Net::POPError` -- サーバが認証失敗以外のエラーを報告した場合に発生します
- **raise** `Net::POPBadResponse` -- サーバからの応答がプロトコル上不正であった場合に発生します

- **SEE** [Net::POP3#start](../../../method/Net=3a=3aPOP3/i/start.md)
