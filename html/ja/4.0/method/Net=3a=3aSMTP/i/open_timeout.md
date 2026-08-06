# Net::SMTP#open_timeout

### def open_timeout -> Integer

接続時に待つ最大秒数を返します。

デフォルトは30(秒)です。
この秒数たってもコネクションが開かなければ例外 TimeoutError を発生します。

- **SEE** [Net::SMTP#open_timeout=](../../../method/Net=3a=3aSMTP/i/open_timeout=3d.md)
