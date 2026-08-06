# Net::FTP#open_timeout

### def open_timeout -> Numeric|nil

接続時のタイムアウトの秒数を返します。

制御用コネクションとデータ転送用コネクションの両方を開くときの共通のタイムアウト時間です。

この秒数たってもコネクションが開かなければ例外 [Net::OpenTimeout](../../../class/Net=3a=3aOpenTimeout.md) を発生します。
整数以外に浮動小数点数や分数を指定できます。
デフォルトは nil(タイムアウトしない)です。

- **SEE** [Net::HTTP#read_timeout](../../../method/Net=3a=3aHTTP/i/read_timeout.md), [Net::HTTP#open_timeout=](../../../method/Net=3a=3aHTTP/i/open_timeout=3d.md)
