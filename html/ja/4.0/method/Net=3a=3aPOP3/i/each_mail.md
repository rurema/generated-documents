# Net::POP3#each_mail

### def each_mail {|popmail| .... } -> [Net::POPMail]
### def each {|popmail| .... } -> [Net::POPMail]

サーバ上の各メールを引数としてブロックを呼びだします。

メールは [Net::POPMail](../../../class/Net=3a=3aPOPMail.md) のインスタンスとして渡されます。

pop3.mails.each と同じです。

- **raise** `TimeoutError` -- 接続がタイムアウトした場合に発生します
- **raise** `Net::POPError` -- サーバがエラーを報告した場合に発生します
- **raise** `Net::POPBadResponse` -- サーバからの応答がプロトコル上不正であった場合に発生します
