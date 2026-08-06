# Net::HTTP#read_timeout=

### def read_timeout=(seconds)

読みこみ([man:read(2)]) 一回でブロックしてよい最大秒数を設定します。

この秒数たっても読みこめなければ例外 [Net::ReadTimeout](../../../class/Net=3a=3aReadTimeout.md)
を発生します。

nilを設定するとタイムアウトしなくなります。

このタイムアウト秒数はサーバとやりとりするメソッドで有効です。

デフォルトは 60 (秒)です。

- **param** `second` -- 待つ秒数を指定します。
- **SEE** [Net::HTTP#open_timeout](../../../method/Net=3a=3aHTTP/i/open_timeout.md), [Net::HTTP#read_timeout](../../../method/Net=3a=3aHTTP/i/read_timeout.md)
