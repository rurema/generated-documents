# Net::POP3.foreach

### def Net::POP3.foreach(address, port = nil, account, password, isapop=false) {|mail| .... } -> ()

POP セッションを開始し、サーバ上のすべてのメールを取りだし、個々のメールを引数としてブロックを呼びだします。

個々のメールは [Net::POPMail](../../../class/Net=3a=3aPOPMail.md) のインスタンスで渡されます。

port に nil を渡すと、適当なポート(通常は110、SSL利用時には 995)を使います。

以下のコードと同様の処理をします。

```ruby invalid
require 'net/pop'

Net::POP3.start(address, port, account, password, isapop=false) {|pop|
  pop.each_mail do |m|
    yield m
  end
}
```
  
```ruby title="使用例"
require 'net/pop'

Net::POP3.foreach('pop.example.com', 110,
                  'YourAccount', 'YourPassword') do |m|
  file.write m.pop
  m.delete if $DELETE
end
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
- **SEE** [Net::POP3.start](../../../method/Net=3a=3aPOP3/s/start.md), [Net::POP3#each_mail](../../../method/Net=3a=3aPOP3/i/each_mail.md)
