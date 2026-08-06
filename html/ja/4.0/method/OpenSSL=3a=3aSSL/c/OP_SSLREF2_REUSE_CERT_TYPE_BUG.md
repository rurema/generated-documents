# OpenSSL::SSL::OP_SSLREF2_REUSE_CERT_TYPE_BUG

### const OP_MICROSOFT_SESS_ID_BUG -> Integer
### const OP_NETSCAPE_CHALLENGE_BUG -> Integer
### const OP_NETSCAPE_REUSE_CIPHER_CHANGE_BUG -> Integer
### const OP_SSLREF2_REUSE_CERT_TYPE_BUG -> Integer
### const OP_MICROSOFT_BIG_SSLV3_BUFFER -> Integer
### const OP_MSIE_SSLV2_RSA_PADDING -> Integer
### const OP_SSLEAY_080_CLIENT_DH_BUG -> Integer
### const OP_TLS_D5_BUG -> Integer
### const OP_TLS_BLOCK_PADDING_BUG -> Integer
### const OP_DONT_INSERT_EMPTY_FRAGMENTS -> Integer

SSL 通信での各種バグ回避コードを有効にするフラグです。

[OpenSSL::SSL::SSLContext#options=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/options=3d.md) で利用します。

通常は [OpenSSL::SSL::OP_ALL](../../../method/OpenSSL=3a=3aSSL/c/OP_ALL.md) でこれらすべてを有効にします。
特定のフラグのみ無効にしたい場合は例えば

```ruby
ctx.options = OP_ALL & ~OP_DONT_INSERT_EMPTY_FRAGMENTS
```

などとします。
