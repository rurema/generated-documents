# OpenSSL::X509::Store#chain

### def chain -> [OpenSSL::X509::Certificate] | nil

最後に [OpenSSL::X509::Store#verify](../../../method/OpenSSL=3a=3aX509=3a=3aStore/i/verify.md) を呼び、検証したときのルート CA までの証明書のチェインを返します。

証明書の順序は以下の通りです。

```text
[証明書, 下位 CA 証明書, 中間 CA 証明書, ... , ルート CA 証明書]
```

verify を一度も呼びだしていない場合は nil を返します。

返り値は verify を呼ぶごとに更新されます。
