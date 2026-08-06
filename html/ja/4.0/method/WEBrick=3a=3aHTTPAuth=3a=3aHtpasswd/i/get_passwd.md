# WEBrick::HTTPAuth::Htpasswd#get_passwd

### def get_passwd(realm, user, reload_db) -> String

ユーザのパスワードの crypt された文字列を取得します。

- **param** `realm` -- レルムは無視されます。

- **param** `user` -- ユーザ名を指定します。

- **param** `reload_db` -- 真を指定すると [WEBrick::HTTPAuth::Htpasswd#reload](../../../method/WEBrick=3a=3aHTTPAuth=3a=3aHtpasswd/i/reload.md) を呼んでから値を返します。
