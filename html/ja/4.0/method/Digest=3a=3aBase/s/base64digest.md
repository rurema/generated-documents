# Digest::Base.base64digest

### def Digest::Base.base64digest(str) -> String

与えられた文字列に対するハッシュ値を、Base64 エンコードした文字列にして返します。
new(str).base64digest と等価です。

返す文字列は '=' でパディングされ、改行は含まれません。

```ruby title="例"
require 'digest'
p Digest::MD5.base64digest('ruby') # => "WOU9EyTu9iZf25ewjtmq3w=="
```

- **SEE** [Digest::Base#base64digest](../../../method/Digest=3a=3aBase/i/base64digest.md)
