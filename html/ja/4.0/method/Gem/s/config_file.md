# Gem.config_file

### def Gem.config_file -> String
{: since="1.9.2"}

ユーザーの `.gemrc` ファイルの標準的な場所を返します。

[Gem.user_home](../../../method/Gem/s/user_home.md) の直下に `.gemrc` があればそのパスを、無ければ [Gem.config_home](../../../method/Gem/s/config_home.md) の下の `gem/gemrc` を返します。

- **return** -- ユーザーの `.gemrc` ファイルの標準的な場所です。
