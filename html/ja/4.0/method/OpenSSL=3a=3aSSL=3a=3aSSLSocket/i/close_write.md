# OpenSSL::SSL::SSLSocket#close_write

### def close_write -> nil

`self` の書き込み側を閉じます。

相手に 'close_notify' アラートを送信しますが、相手からの 'close_notify' の応答は待ちません。

動作は使われている OpenSSL のバージョンと TLS のプロトコルバージョンによって異なります。TLS 1.2 以前では、相手からの 'close_notify' を受信すると、`self` も 'close_notify' を返して即座に接続を閉じます。書き込みを待っているデータは破棄されます。そのため TLS 1.2 では、このメソッドの呼び出しによって接続全体が閉じられることになります。TLS 1.3 では、読み込み用に接続は開いたままになります。

- **SEE** [IO#close_write](../../../method/IO/i/close_write.md), [OpenSSL::SSL::SSLSocket#close_read](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLSocket/i/close_read.md)
