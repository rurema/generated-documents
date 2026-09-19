# Gem.data_home

### def Gem.data_home -> String

ユーザーのデータディレクトリの標準的な場所を返します。

環境変数 `XDG_DATA_HOME` が設定されていればその値を、設定されていなければ [Gem.user_home](../../../method/Gem/s/user_home.md) の下の `.local/share` を返します。

- **return** -- ユーザーのデータディレクトリの標準的な場所です。
