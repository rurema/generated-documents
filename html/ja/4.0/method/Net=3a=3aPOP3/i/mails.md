# Net::POP3#mails

### def mails -> [Net::POPMail]

サーバ上の全てのメールを、[Net::POPMail](../../../class/Net=3a=3aPOPMail.md)オブジェクトの配列として返します。

この配列はメールを最初に取得しようとしたときに生成され、セッションの間キャッシュされます。

- **raise** `TimeoutError` -- 接続がタイムアウトした場合に発生します
- **raise** `Net::POPError` -- サーバがエラーを報告した場合に発生します
- **raise** `Net::POPBadResponse` -- サーバからの応答がプロトコル上不正であった場合に発生します
