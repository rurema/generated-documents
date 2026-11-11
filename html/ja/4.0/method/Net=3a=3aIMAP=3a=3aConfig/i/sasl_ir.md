# Net::IMAP::Config#sasl_ir

### def sasl_ir -> Symbol | bool
### def sasl_ir? -> Symbol | bool

[Net::IMAP#authenticate](../../../method/Net=3a=3aIMAP/i/authenticate.md) で SASL-IR 拡張([RFC:4959])を使うかどうかを返します。

サーバと認証方式の両方が SASL-IR 拡張に対応しているときに使います。
[Net::IMAP#authenticate](../../../method/Net=3a=3aIMAP/i/authenticate.md) で `sasl_ir` を指定すると、そちらが優先されます。

値の意味は次のとおりです。

- false のときは、SASL-IR 拡張を使いません。
- `:when_capabilities_cached` のときは、サーバの機能一覧を取得済みのときだけ SASL-IR 拡張を使い、機能一覧を調べるための CAPABILITY コマンドは送りません。
- true のときは、SASL-IR 拡張を使います。

既定値は true です。
版ごとの既定値は、`0.3` 以前が false、`0.4` 以降が true です。


- **SEE** [Net::IMAP::Config#sasl_ir=](../../../method/Net=3a=3aIMAP=3a=3aConfig/i/sasl_ir=3d.md), [Net::IMAP#authenticate](../../../method/Net=3a=3aIMAP/i/authenticate.md)
