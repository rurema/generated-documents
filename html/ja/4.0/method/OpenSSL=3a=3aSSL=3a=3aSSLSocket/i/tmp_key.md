# OpenSSL::SSL::SSLSocket#tmp_key

### def tmp_key -> OpenSSL::PKey::PKey | nil

Forward Secrecy(前方秘匿性)を持つ暗号スイートが使われた場合の、一時的な鍵を返します。

Forward Secrecy を持つ暗号スイートが使われなかった場合は nil を返します。

- **SEE** [OpenSSL::SSL::SSLContext#ecdh_curves=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/ecdh_curves=3d.md)
