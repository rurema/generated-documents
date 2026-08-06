# OpenSSL::Buffering#sync=

### def sync=(sync)

出力の同期モードを設定します。

true に設定すると同期モードになり、
[OpenSSL::Buffering#write_nonblock](../../../method/OpenSSL=3a=3aBuffering/i/write_nonblock.md) と
[OpenSSL::SSL::SSLSocket#syswrite](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLSocket/i/syswrite.md) を除くすべての書き込み
([OpenSSL::Buffering#write](../../../method/OpenSSL=3a=3aBuffering/i/write.md), [OpenSSL::Buffering#print](../../../method/OpenSSL=3a=3aBuffering/i/print.md) など)
はバッファリングされずに出力されます。

false に設定すると書き込みはバッファリングされます。

- **param** `sync` -- 設定するモード(真偽値)
- **SEE** [OpenSSL::Buffering#sync](../../../method/OpenSSL=3a=3aBuffering/i/sync.md)
