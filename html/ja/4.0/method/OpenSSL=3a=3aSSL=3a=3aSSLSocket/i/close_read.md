# OpenSSL::SSL::SSLSocket#close_read

### def close_read -> nil

`self` の読み込み側を閉じます。

OpenSSL には読み込み側だけを閉じる合理的な方法がないため、実際には何も行いません。ただし [IO](../../../class/IO.md) との互換性のために用意されています。

- **SEE** [IO#close_read](../../../method/IO/i/close_read.md), [OpenSSL::SSL::SSLSocket#close_write](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLSocket/i/close_write.md)
