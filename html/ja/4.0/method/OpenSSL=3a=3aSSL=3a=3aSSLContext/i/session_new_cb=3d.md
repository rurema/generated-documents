# OpenSSL::SSL::SSLContext#session_new_cb=

### def session_new_cb=(cb)

新たなセッションが作られたときに呼び出されるコールバックを指定します。

コールバックオブジェクトを call するときの引数は

```text
[ 接続オブジェクト(OpenSSL::SSL::SSLSocket), 新たなセッション(OpenSSL::SSL::Session)]
```

という配列です。

セッションキャッシュについて詳しくは [OpenSSL::SSL::Session](../../../class/OpenSSL=3a=3aSSL=3a=3aSession.md) を見てください。

- **param** `cb` -- コールバックオブジェクト([Proc](../../../class/Proc.md) もしくは [Method](../../../class/Method.md))
- **SEE** [OpenSSL::SSL::SSLContext#session_new_cb](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/session_new_cb.md)
