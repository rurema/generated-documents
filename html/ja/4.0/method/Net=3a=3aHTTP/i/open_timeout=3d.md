# Net::HTTP#open_timeout=

### def open_timeout=(seconds)

接続時に待つ最大秒数を設定します。

この秒数たってもコネクションが開かなければ例外 [Net::OpenTimeout](../../../class/Net=3a=3aOpenTimeout.md) を発生します。
nilを設定するとタイムアウトしなくなります。

以下のコネクションを開くメソッドで有効です。

  - [Net::HTTP.start](../../../method/Net=3a=3aHTTP/s/start.md)
  - [Net::HTTP#start](../../../method/Net=3a=3aHTTP/i/start.md)

- **param** `second` -- 待つ秒数を指定します。
- **SEE** [Net::HTTP#read_timeout](../../../method/Net=3a=3aHTTP/i/read_timeout.md), [Net::HTTP#open_timeout](../../../method/Net=3a=3aHTTP/i/open_timeout.md)
