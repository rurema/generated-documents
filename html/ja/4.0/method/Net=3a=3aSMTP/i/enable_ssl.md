# Net::SMTP#enable_ssl

### def enable_ssl(context = Net::SMTP.default_ssl_context) -> ()
### def enable_tls(context = Net::SMTP.default_ssl_context) -> ()

その Net::SMTP オブジェクトが SMTPS を利用するよう設定します。

このメソッドは [Net::SMTP#start](../../../method/Net=3a=3aSMTP/i/start.md) を呼ぶ前に呼ぶ必要があります。

- **param** `context` -- SSL接続で利用する [OpenSSL::SSL::SSLContext](../../../class/OpenSSL=3a=3aSSL=3a=3aSSLContext.md) 

- **SEE** [Net::SMTP#tls?](../../../method/Net=3a=3aSMTP/i/tls=3f.md), [Net::SMTP#disable_tls](../../../method/Net=3a=3aSMTP/i/disable_tls.md)
