# OpenSSL::SSL::SSLContext#alpn_select_cb=

### def alpn_select_cb -> Proc | nil
### def alpn_select_cb=(cb)

ALPN 拡張でクライアントが提示したプロトコルの中から、サーバが利用するプロトコルを選択するためのコールバックを取得・設定します。

コールバックにはクライアントが提示したプロトコル名の文字列の配列が渡され、その中から選んだプロトコル名を文字列で返さなければなりません。提示された中に受け入れられるものがない場合は、コールバック内で例外を発生させるとハンドシェイクが失敗します。

このコールバックを設定しない場合、サーバ側は ALPN 拡張をサポートしません。クライアント側で設定しても効果はありません。

デフォルトは nil です。

```ruby invalid
proc{|protocols| ... }
```

- **param** `cb` -- コールバックオブジェクト([Proc](../../../class/Proc.md) や [Method](../../../class/Method.md) など)
- **SEE** [OpenSSL::SSL::SSLContext#alpn_protocols=](../../../method/OpenSSL=3a=3aSSL=3a=3aSSLContext/i/alpn_protocols=3d.md)
