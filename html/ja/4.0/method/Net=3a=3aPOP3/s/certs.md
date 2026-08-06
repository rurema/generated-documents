# Net::POP3.certs

### def Net::POP3.certs -> String|nil

SSL のパラメータの ca_file (なければ ca_path) を返します。

どちらも設定されていない場合は nil を返します。

- **SEE** [OpenSSL::SSL::SSLContext#ca_file](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/ca_file.md), [OpenSSL::SSL::SSLContext#ca_path](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/ca_path.md)
