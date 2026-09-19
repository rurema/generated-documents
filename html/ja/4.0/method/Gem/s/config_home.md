# Gem.config_home

### def Gem.config_home -> String

ユーザーの設定ディレクトリの標準的な場所を返します。

環境変数 `XDG_CONFIG_HOME` が設定されていればその値を、設定されていなければ [Gem.user_home](../../../method/Gem/s/user_home.md) の下の `.config` を返します。

- **return** -- ユーザーの設定ディレクトリの標準的な場所です。
