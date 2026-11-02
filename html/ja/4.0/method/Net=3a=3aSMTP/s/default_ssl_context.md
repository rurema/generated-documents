# Net::SMTP.default_ssl_context

### def Net::SMTP.default_ssl_context(ssl_context_params = nil) -> OpenSSL::SSL::SSLContext

SSL 通信に使われる SSL のコンテキストのデフォルト値を返します。

- **param** `ssl_context_params` -- [OpenSSL::SSL::SSLContext#set_params](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/set_params.md) に渡すパラメータを [Hash](../../../class/Hash.md) で指定します。nil なら空の [Hash](../../../class/Hash.md) を渡します
