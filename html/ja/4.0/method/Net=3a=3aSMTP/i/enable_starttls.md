# Net::SMTP#enable_starttls

### def enable_starttls(context = Net::SMTP.default_ssl_context) -> ()

その Net::SMTP オブジェクトが 常にSTARTTLSを利用する
(利用できない場合には例外を発生する)ように設定します。

- **param** `context` -- SSL接続で利用する [OpenSSL::SSL::SSLContext](../../../class/OpenSSL=3a=3aSSL=3a=3aSSLContext.md) 
- **SEE** [Net::SMTP#starttls?](../../../method/Net=3a=3aSMTP/i/starttls=3f.md), [Net::SMTP#starttls_always?](../../../method/Net=3a=3aSMTP/i/starttls_always=3f.md), [Net::SMTP#enable_starttls_auto](../../../method/Net=3a=3aSMTP/i/enable_starttls_auto.md)
