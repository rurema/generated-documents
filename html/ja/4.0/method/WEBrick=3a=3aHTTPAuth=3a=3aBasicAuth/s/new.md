# WEBrick::HTTPAuth::BasicAuth.new

### def WEBrick::HTTPAuth::BasicAuth.new(config, default = Config::BasicAuth) -> WEBrick::HTTPAuth::BasicAuth

BasicAuth オブジェクトを生成します。config は設定を保存したハッシュです。

config で有効なハッシュキーは以下の通りです。

```text
:Realm            =>
:UserDB           =>
:Logger           =>
:AutoReloadUserDB =>
```

realm を表す文字列 :Realm には与えます。:UserDB
には [WEBrick::HTTPAuth::Htpasswd](../../../class/WEBrick=3a=3aHTTPAuth=3a=3aHtpasswd.md) オブジェクトを与えます。:Logger にはロガーオブジェクトを与えます。また、:AutoReloadUserDB には
[WEBrick::HTTPAuth::Htpasswd#get_passwd](../../../method/WEBrick=3a=3aHTTPAuth=3a=3aHtpasswd/i/get_passwd.md) の
reload_db に渡す引数を与えます。

- **param** `config` -- 設定を保持しているハッシュを指定します。

- **param** `default` -- デフォルトは [WEBrick::Config::BasicAuth](../../../method/WEBrick=3a=3aConfig/c/BasicAuth.md) です。
