# Net::SMTP#enable_starttls_auto

### def enable_starttls_auto(context = Net::SMTP.default_ssl_context) -> ()

その Net::SMTP オブジェクトがSTARTTLSが利用可能な場合
(つまりサーバがSTARTTLSを広告した場合)のみにSTARTTLSを利用するように設定します。

- **SEE** [Net::SMTP#starttls?](../../../method/Net=3a=3aSMTP/i/starttls=3f.md), [Net::SMTP#starttls_auto?](../../../method/Net=3a=3aSMTP/i/starttls_auto=3f.md), [Net::SMTP#enable_starttls_auto](../../../method/Net=3a=3aSMTP/i/enable_starttls_auto.md)
- **param** `context` -- SSL接続で利用する [OpenSSL::SSL::SSLContext](../../../class/OpenSSL=3a=3aSSL=3a=3aSSLContext.md) 
- **SEE** [Net::SMTP#starttls?](../../../method/Net=3a=3aSMTP/i/starttls=3f.md), [Net::SMTP#starttls_auto?](../../../method/Net=3a=3aSMTP/i/starttls_auto=3f.md), [Net::SMTP#enable_starttls](../../../method/Net=3a=3aSMTP/i/enable_starttls.md)
