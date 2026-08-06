# OpenSSL::PKCS7#error_string

### def error_string -> String | nil

検証エラーの理由を表す文字列を返します。

[OpenSSL::PKCS7#verify](../../../method/OpenSSL=3a=3aPKCS7/i/verify.md) で検証をした場合のみ更新されます。

[OpenSSL::PKCS7#verify](../../../method/OpenSSL=3a=3aPKCS7/i/verify.md) で検証をする前は nil を返します。

検証に成功した場合は nil を返します。

- **SEE** [OpenSSL::PKCS7#error_string=](../../../method/OpenSSL=3a=3aPKCS7/i/error_string=3d.md)
