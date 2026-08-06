# Net::FTP#open_timeout=

### def open_timeout=(seconds)

接続時のタイムアウトの秒数を設定します。

制御用コネクションとデータ転送用コネクションの両方を開くときの共通のタイムアウト時間です。

この秒数たってもコネクションが開かなければ例外 [Net::OpenTimeout](../../../class/Net=3a=3aOpenTimeout.md) を発生します。
整数以外に浮動小数点数や分数を指定できます。
デフォルトは nil(タイムアウトしない)です。

制御用コネクションを開く以下のメソッドで利用されます。

  - [Net::FTP.open](../../../method/Net=3a=3aFTP/s/open.md)
  - [Net::FTP.new](../../../method/Net=3a=3aFTP/s/new.md)
  - [Net::FTP#connect](../../../method/Net=3a=3aFTP/i/connect.md)

また、以下のデータ転送用コネクションを開くメソッドでも利用されます。

  - [Net::FTP#retrbinary](../../../method/Net=3a=3aFTP/i/retrbinary.md)
  - [Net::FTP#retrlines](../../../method/Net=3a=3aFTP/i/retrlines.md)
  - [Net::FTP#storbinary](../../../method/Net=3a=3aFTP/i/storbinary.md)
  - [Net::FTP#storlines](../../../method/Net=3a=3aFTP/i/storlines.md)

- **param** `second` -- 待つ秒数を指定します。
- **SEE** [Net::HTTP#read_timeout](../../../method/Net=3a=3aHTTP/i/read_timeout.md), [Net::HTTP#open_timeout](../../../method/Net=3a=3aHTTP/i/open_timeout.md)
