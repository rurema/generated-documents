# OpenSSL::SSL::SSLContext#session_remove_cb=

### def session_remove_cb=(cb)

セッションが内部キャッシュから破棄されたときに呼び出されるコールバックを設定します。

コールバックオブジェクトを call するときの引数は

```text
[ SSLContextオブジェクト(OpenSSL::SSL::SSLContext), 
  破棄されるセッション(OpenSSL::SSL::Session)]
```

という配列です。

セッションキャッシュについて詳しくは [OpenSSL::SSL::Session](../../../class/OpenSSL=3a=3aSSL=3a=3aSession.md) を見てください。

- **param** `cb` -- コールバックオブジェクト([Proc](../../../class/Proc.md) もしくは [Method](../../../class/Method.md))
- **SEE** [OpenSSL::SSL::SSLContext#session_remove_cb](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/session_remove_cb.md)
