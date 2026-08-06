# OpenSSL::PKCS7.write_smime

### def OpenSSL::PKCS7.write_smime(p7sig, data=nil, flags = 0) -> String

PKCS7 オブジェクトから S/MIME 形式の文字列を返します。

data には署名対象のデータを渡します。
data に nil を渡すと [OpenSSL::PKCS7#data](../../../method/OpenSSL=3a=3aPKCS7/i/data.md) で得られる文字列を用います。通常は nil を渡してください。

flags には以下の定数の or を渡します。
  - [OpenSSL::PKCS7::DETACHED](../../../method/OpenSSL=3a=3aPKCS7/c/DETACHED.md)
      クリア署名をします。これは [OpenSSL::PKCS7.sign](../../../method/OpenSSL=3a=3aPKCS7/s/sign.md) で
      [OpenSSL::PKCS7::DETACHED](../../../method/OpenSSL=3a=3aPKCS7/c/DETACHED.md) を渡した場合にのみ意味を持ちます。
  - [OpenSSL::PKCS7::TEXT](../../../method/OpenSSL=3a=3aPKCS7/c/TEXT.md)
      MIME ヘッダに text/plain を付加します。
      これは [OpenSSL::PKCS7.sign](../../../method/OpenSSL=3a=3aPKCS7/s/sign.md) で
      [OpenSSL::PKCS7::DETACHED](../../../method/OpenSSL=3a=3aPKCS7/c/DETACHED.md) を渡した場合にのみ意味を持ちます。

```ruby title="例"
require 'openssl'

data = "foobar"
p7 = OpenSSL::PKCS7.sign( OpenSSL::X509::Certificate.new(File.read('cert.pem')),
                          OpenSSL::PKey::RSA.new(File.read('privkey.pem')),
                          data)
smime = PKCS7.write_smime(p7)
```

- **param** `p7sig` -- PKCS#7 オブジェクト
- **param** `data` -- 署名されたデータ文字列
- **param** `flags` -- フラグ(整数値)
- **raise** `OpenSSL::PKCS::PKCS7Error` -- S/MIME形式への変換に失敗した場合に発生します
