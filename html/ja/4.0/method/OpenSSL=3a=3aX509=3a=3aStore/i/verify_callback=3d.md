# OpenSSL::X509::Store#verify_callback=

### def verify_callback=(proc)

検証をフィルタするコールバックを設定します。

コールバックには [Proc](../../../class/Proc.md) や [Method](../../../class/Method.md) を渡します。

渡されたコールバックオブジェクトは証明書チェインの検証時にチェインに含まれる各証明書の署名を検証するたびに呼びだされます。
そのときに渡される引数は以下のように

```ruby invalid
proc{|ok, ctx| ... }
```

2つで、1つめは検証が成功したかの真偽値、
2つめは検証後の状態を保存した
[OpenSSL::X509::StoreContext](../../../class/OpenSSL=3a=3aX509=3a=3aStoreContext.md) オブジェクトです。
このコールバックには2つの役割があります。1つ目はコンテキストオブジェクトを調べることで詳細なエラー情報を得ることです。2つ目は検証をカスタマイズすることです。このコールバックが true を返すと、たとえ
OpenSSL が検証失敗と判定しても、検証が成功したものと判断し証明書チェインの検証を続けます。逆に false を返すと、検証が失敗したものとみなされ検証を停止し、検証メソッドは検証失敗を返します。詳細なエラー情報を得たいだけの場合はコールバックは第一引数をそのまま返すようにしてください。

nil を設定するとデフォルトのコールバック(単に第一引数をそのまま返すだけ)
が使われます。

初期状態は nil です。

- **param** `proc` -- 設定する [Proc](../../../class/Proc.md) オブジェクト
- **SEE** [OpenSSL::X509::Store#verify_callback](../../../method/OpenSSL=3a=3aX509=3a=3aStore/i/verify_callback.md),
     [OpenSSL::X509::Store#verify](../../../method/OpenSSL=3a=3aX509=3a=3aStore/i/verify.md),
     [OpenSSL::X509::StoreContext#verify](../../../method/OpenSSL=3a=3aX509=3a=3aStoreContext/i/verify.md)
