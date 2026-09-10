# OpenSSL::HMAC.base64digest

### def OpenSSL::HMAC.base64digest(digest, key, data) -> String

渡された digest と key を用いて data の HMAC を計算し、その値を Base64 エンコードした文字列で返します。

digest には利用するハッシュ関数を表す文字列("md5", "sha256" など)を渡します。

- **param** `digest` -- 利用するハッシュ関数
- **param** `key` -- 利用する鍵の文字列
- **param** `data` -- HMAC を計算する文字列

```ruby title="例"
require "openssl"

key = "key"
data = "The quick brown fox jumps over the lazy dog"
p OpenSSL::HMAC.base64digest("SHA1", key, data) # => "3nybhbi3iqa8ino29wqQcBydtNk="
```
