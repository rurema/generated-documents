# OpenSSL::SSL::SSLContext#session_get_cb=

### def session_get_cb=(cb)

セッションキャッシュを探索し、内部のキャッシュテーブルには見付からなかった場合に呼び出されるコールバックを設定します。

コールバックオブジェクトを call するときの引数は

```text
[ 接続オブジェクト(OpenSSL::SSL::SSLSocket), セッションID(文字列) ]
```

という配列です。このコールバックの返り値が
[OpenSSL::SSL::Session](../../../class/OpenSSL=3a=3aSSL=3a=3aSession.md) オブジェクトならば、それをキャッシュ値として利用します。それ以外を返したならば、キャッシュは見つからなかったものとして取り扱われます。

セッションキャッシュについて詳しくは [OpenSSL::SSL::Session](../../../class/OpenSSL=3a=3aSSL=3a=3aSession.md) を見てください。

- **param** `cb` -- コールバックオブジェクト([Proc](../../../class/Proc.md) もしくは [Method](../../../class/Method.md))
- **SEE** [OpenSSL::SSL::SSLContext#session_get_cb](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/session_get_cb.md)
