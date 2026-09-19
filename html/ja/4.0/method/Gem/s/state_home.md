# Gem.state_home

### def Gem.state_home -> String

ユーザーの状態ファイル用ディレクトリの標準的な場所を返します。

環境変数 `XDG_STATE_HOME` が設定されていればその値を、設定されていなければ [Gem.user_home](../../../method/Gem/s/user_home.md) の下の `.local/state` を返します。

- **return** -- ユーザーの状態ファイル用ディレクトリの標準的な場所です。
