# Net::HTTP#keep_alive_timeout=

### def keep_alive_timeout=(seconds)

以前のリクエストで使ったコネクションの再利用(keep-alive)を許可する秒数を設定します。

この秒数以内に同じホストに次のリクエストを送った場合、ソケットを再利用します。

デフォルトは2(秒)です。これは一般的にサーバ側の keep-alive の秒数が2秒である場合が多いからです。

- **SEE** [Net::HTTP#keep_alive_timeout](../../../method/Net=3a=3aHTTP/i/keep_alive_timeout.md)
