# Net::SMTP#starttls?

### def starttls? -> Symbol/nil

その Net::SMTP オブジェクトが STARTTLSを利用するかどうかを返します。

常に利用する(利用できないときは [Net::SMTP#start](../../../method/Net=3a=3aSMTP/i/start.md) で例外
[Net::SMTPUnsupportedCommand](../../../class/Net=3a=3aSMTPUnsupportedCommand.md) を発生) するときは :always を、利用可能な場合のみ利用する場合は :auto を、常に利用しない場合には nil を返します。

- **SEE** [Net::SMTP#start](../../../method/Net=3a=3aSMTP/i/start.md)
