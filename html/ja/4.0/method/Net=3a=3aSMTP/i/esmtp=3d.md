# Net::SMTP#esmtp=

### def esmtp=(bool)

その Net::SMTP オブジェクトが ESMTP を使うかどうかを指定します。

この指定は [Net::SMTP#start](../../../method/Net=3a=3aSMTP/i/start.md) を呼ぶ前にする必要があります。
ESMTPモードで [Net::SMTP#start](../../../method/Net=3a=3aSMTP/i/start.md) を呼び、うまくいかなかった場合には 普通の SMTP モードに切り替えてやりなおします
(逆はしません)。

- **SEE** [Net::SMTP#esmtp?](../../../method/Net=3a=3aSMTP/i/esmtp=3f.md)
