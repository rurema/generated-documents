# OpenSSL::PKey::PKey#sign_raw

### def sign_raw(digest, data) -> String
### def sign_raw(digest, data, options) -> String

秘密鍵の部分を使って data に署名します。[OpenSSL::PKey::PKey#sign](../../../method/OpenSSL=3a=3aPKey=3a=3aPKey/i/sign.md) と異なり、data はこのメソッドの中ではハッシュ化されません。

検証には [OpenSSL::PKey::PKey#verify_raw](../../../method/OpenSSL=3a=3aPKey=3a=3aPKey/i/verify_raw.md) を使います。

- **param** `digest` -- 利用するメッセージダイジェストアルゴリズムの名前を表す文字列です。鍵の種類によってダイジェストアルゴリズムを必要としない場合は nil を指定します。このメソッドは data をハッシュ化しませんが、署名アルゴリズムによってはこの引数が必要になることがあります
- **param** `data` -- 署名するデータの文字列
- **param** `options` -- OpenSSL に渡すアルゴリズム固有の制御用オプションを指定するハッシュです(省略可)。指定できる内容は OpenSSL のマニュアル `EVP_PKEY_CTX_ctrl_str(3)` を参照してください
- **SEE** [OpenSSL::PKey::PKey#verify_raw](../../../method/OpenSSL=3a=3aPKey=3a=3aPKey/i/verify_raw.md)

```ruby
require "openssl"
data = "Sign me!"
hash = OpenSSL::Digest.digest("SHA256", data)
pkey = OpenSSL::PKey.generate_key("RSA", "rsa_keygen_bits" => 2048)
signopts = { "rsa_padding_mode" => "pss" }
signature = pkey.sign_raw("SHA256", hash, signopts)
pub_key = pkey.public_key
p pub_key.verify_raw("SHA256", signature, hash, signopts) # => true
```
