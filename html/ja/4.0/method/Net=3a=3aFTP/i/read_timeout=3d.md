# Net::FTP#read_timeout=

### def read_timeout=(seconds)

読み込み一回でブロックしてよい最大秒数を設定します。

この秒数たっても読みこめなければ例外 [Net::ReadTimeout](../../../class/Net=3a=3aReadTimeout.md)
を発生します。整数以外に浮動小数点数や分数を指定できます。
デフォルトは 60 (秒)です。

このタイムアウト秒数は、サーバとやりとりするほとんどの [Net::FTP](../../../class/Net=3a=3aFTP.md) のメソッドで有効です。

- **param** `second` -- 待つ秒数を指定します。
- **SEE** [Net::HTTP#open_timeout](../../../method/Net=3a=3aHTTP/i/open_timeout.md), [Net::HTTP#read_timeout](../../../method/Net=3a=3aHTTP/i/read_timeout.md)
