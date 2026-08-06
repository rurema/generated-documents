# OpenSSL::X509::Store#error_string

### def error_string -> String | nil

最後に [OpenSSL::X509::Store#verify](../../../method/OpenSSL=3a=3aX509=3a=3aStore/i/verify.md) を呼び、検証したときのエラー文字列を返します。

検証に成功した場合は "ok" を返します。

verify を一度も呼びだしていない場合は nil を返します。

返り値は verify を呼ぶごとに更新されます。
