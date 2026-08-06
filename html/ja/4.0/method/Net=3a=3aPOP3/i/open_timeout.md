# Net::POP3#open_timeout

### def open_timeout -> Integer

接続時に待つ最大秒数を返します。

この秒数たってもコネクションが開かないときは例外 [Net::OpenTimeout](../../../class/Net=3a=3aOpenTimeout.md) を発生します。

デフォルトは30秒です。

- **SEE** [Net::POP3#open_timeout=](../../../method/Net=3a=3aPOP3/i/open_timeout=3d.md)
