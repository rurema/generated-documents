# Net::HTTP#open_timeout

### def open_timeout -> Integer|nil

接続時に待つ最大秒数を返します。

この秒数たってもコネクションが開かなければ例外 [Net::OpenTimeout](../../../class/Net=3a=3aOpenTimeout.md) を発生します。

デフォルトは 60 (秒)です。

- **SEE** [Net::HTTP#read_timeout](../../../method/Net=3a=3aHTTP/i/read_timeout.md), [Net::HTTP#open_timeout=](../../../method/Net=3a=3aHTTP/i/open_timeout=3d.md)
