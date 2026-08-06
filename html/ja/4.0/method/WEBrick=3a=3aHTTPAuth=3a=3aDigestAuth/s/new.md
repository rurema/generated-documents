# WEBrick::HTTPAuth::DigestAuth.new

### def WEBrick::HTTPAuth::DigestAuth.new(config, default = WEBrick::Config::DigestAuth) -> WEBrick::HTTPAuth::DigestAuth

自身を初期化します。

認証を実行するために、リクエスト間で状態を保存し、複数のリクエストに対して同一のインスタンスを使用してください。

- **param** `config` -- 設定を保持しているハッシュを指定します。
              :Realm と :UserDB は必ず指定しなければなりません。

- **param** `default` -- デフォルトは [WEBrick::Config::DigestAuth](../../../method/WEBrick=3a=3aConfig/c/DigestAuth.md) です。

- **SEE** [WEBrick::Config::DigestAuth](../../../method/WEBrick=3a=3aConfig/c/DigestAuth.md)
