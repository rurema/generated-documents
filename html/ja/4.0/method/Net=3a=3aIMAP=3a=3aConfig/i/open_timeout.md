# Net::IMAP::Config#open_timeout

### def open_timeout -> Integer

接続が確立するまで待つ秒数を返します。

[Net::IMAP.new](../../../method/Net=3a=3aIMAP/s/new.md) で TCP の接続と TLS の開始のそれぞれに適用し、この秒数を超えると [Net::OpenTimeout](../../../class/Net=3a=3aOpenTimeout.md) が発生します。
既定値は 30 です。

[Net::IMAP#starttls](../../../method/Net=3a=3aIMAP/i/starttls.md) でも使います。



- **SEE** [Net::IMAP::Config#open_timeout=](../../../method/Net=3a=3aIMAP=3a=3aConfig/i/open_timeout=3d.md), [Net::IMAP#open_timeout](../../../method/Net=3a=3aIMAP/i/open_timeout.md)
