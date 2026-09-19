# Gem.user_home

### def Gem.user_home -> String
{: since="1.9.2"}

ユーザーのホームディレクトリを返します。

内部で `Dir.home` を使って求めます。何らかの理由で求められなかった場合、Windows であれば `HOMEDRIVE`(または `SystemDrive`)が指すドライブのルートを、それ以外であれば `/` を返します。

- **return** -- ユーザーのホームディレクトリです。
