# Gem.cache_home

### def Gem.cache_home -> String

ユーザーのキャッシュディレクトリの標準的な場所を返します。

環境変数 `XDG_CACHE_HOME` が設定されていればその値を、設定されていなければ [Gem.user_home](../../../method/Gem/s/user_home.md) の下の `.cache` を返します。

- **return** -- ユーザーのキャッシュディレクトリの標準的な場所です。
