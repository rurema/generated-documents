# Net::SMTP#read_timeout

### def read_timeout -> Integer

読みこみ ([man:read(2)] 一回) でブロックしてよい最大秒数を返します。

デフォルトは60(秒)です。
この秒数たっても読みこめなければ例外 TimeoutError を発生します。

- **SEE** [Net::SMTP#read_timeout=](../../../method/Net=3a=3aSMTP/i/read_timeout=3d.md)
