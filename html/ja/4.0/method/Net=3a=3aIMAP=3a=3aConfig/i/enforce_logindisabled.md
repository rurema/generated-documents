# Net::IMAP::Config#enforce_logindisabled

### def enforce_logindisabled -> Symbol | bool

[Net::IMAP#login](../../../method/Net=3a=3aIMAP/i/login.md) の前に、サーバの機能一覧に LOGINDISABLED があるかを確認するかどうかを返します。

確認して LOGINDISABLED があったときは、LOGIN コマンドを送らずに [Net::IMAP::LoginDisabledError](../../../class/Net=3a=3aIMAP=3a=3aLoginDisabledError.md) が発生します。
値の意味は次のとおりです。

- false のときは、確認せずに LOGIN コマンドを送ります。
- `:when_capabilities_cached` のときは、サーバの機能一覧を取得済みのときだけ確認し、機能一覧を調べるための CAPABILITY コマンドは送りません。
- true のときは、確認します。機能一覧が未取得なら、LOGIN コマンドの前に CAPABILITY コマンドを送ります。

既定値は true です。
版ごとの既定値は、`0.4` 以前が false、`0.5` 以降が true です。


- **SEE** [Net::IMAP::Config#enforce_logindisabled=](../../../method/Net=3a=3aIMAP=3a=3aConfig/i/enforce_logindisabled=3d.md), [Net::IMAP#login](../../../method/Net=3a=3aIMAP/i/login.md)
