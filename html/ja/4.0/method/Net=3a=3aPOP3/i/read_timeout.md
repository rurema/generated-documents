# Net::POP3#read_timeout

### def read_timeout -> Integer

読み込みでブロックしてよい最大秒数を返します。

この秒数たっても読みこめなければ例外 [Net::ReadTimeout](../../../class/Net=3a=3aReadTimeout.md) を発生します。

デフォルトは60秒です。

- **SEE** [Net::POP3#read_timeout=](../../../method/Net=3a=3aPOP3/i/read_timeout=3d.md)
