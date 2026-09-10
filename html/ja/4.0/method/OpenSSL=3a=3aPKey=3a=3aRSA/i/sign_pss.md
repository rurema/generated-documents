# OpenSSL::PKey::RSA#sign_pss

### def sign_pss(digest, data, salt_length:, mgf1_hash:) -> String

RSA-PSS (Probabilistic Signature Scheme) を使って data に署名し、計算した署名を返します。

エラーが発生した場合は [OpenSSL::PKey::PKeyError](../../../class/OpenSSL=3a=3aPKey=3a=3aPKeyError.md) が発生します。

検証には [OpenSSL::PKey::RSA#verify_pss](../../../method/OpenSSL=3a=3aPKey=3a=3aRSA/i/verify_pss.md) を使います。

- **param** `digest` -- 利用するメッセージダイジェストアルゴリズムの名前を表す文字列
- **param** `data` -- 署名するデータの文字列
- **param** `salt_length` -- ソルトの長さ(オクテット単位)です。特別な値として、ダイジェストの長さを意味する `:digest` と、秘密鍵と選択したメッセージダイジェストアルゴリズムの組み合わせで可能な最大の長さを意味する `:max` が指定できます
- **param** `mgf1_hash` -- MGF1(サポートされているマスク生成関数(MGF))で使うハッシュアルゴリズム
- **raise** `OpenSSL::PKey::PKeyError` -- エラーが発生した場合に発生します
- **SEE** [OpenSSL::PKey::RSA#verify_pss](../../../method/OpenSSL=3a=3aPKey=3a=3aRSA/i/verify_pss.md)

```ruby
require "openssl"
data = "Sign me!"
pkey = OpenSSL::PKey::RSA.generate(2048)
signature = pkey.sign_pss("SHA256", data, salt_length: :max, mgf1_hash: "SHA256")
pub_key = OpenSSL::PKey.read(pkey.public_to_der)
p pub_key.verify_pss("SHA256", signature, data, salt_length: :auto, mgf1_hash: "SHA256") # => true
```
