# WEBrick::HTTPAuth::Htdigest#get_passwd

### def get_passwd(realm, user, reload_db) -> String

与えられたレルムとユーザ名からパスワードのハッシュ値を取得して返します。

- **param** `realm` -- レルムを指定します。

- **param** `user` -- ユーザ名を指定します。

- **param** `reload_db` -- 真を指定すると [WEBrick::HTTPAuth::Htdigest#reload](../../../method/WEBrick=3a=3aHTTPAuth=3a=3aHtdigest/i/reload.md) を呼んでから値を返します。
