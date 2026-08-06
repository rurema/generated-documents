# Net::POP3#n_mails

### def n_mails -> Integer

サーバにあるメールの数を返します。

- **SEE** [Net::POP3#n_bytes](../../../method/Net=3a=3aPOP3/i/n_bytes.md)
- **raise** `TimeoutError` -- 接続がタイムアウトした場合に発生します
- **raise** `Net::POPError` -- サーバがエラーを報告した場合に発生します
- **raise** `Net::POPBadResponse` -- サーバからの応答がプロトコル上不正であった場合に発生します
