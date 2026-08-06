# Digest::Base#base64digest!

### def base64digest! -> String

updateや<<によって追加した文字列に対するハッシュ値を、Base64 エンコードした文字列にして返します。
[Digest::Base#base64digest](../../../method/Digest=3a=3aBase/i/base64digest.md)と違い、メソッドの処理後、オブジェクトの状態を初期状態(newした直後と同様の状態)に戻します。

```ruby title="例"
require 'digest/md5'
digest = Digest::MD5.new
digest.update("ruby")
p digest.base64digest!  # => "WOU9EyTu9iZf25ewjtmq3w=="
p digest.hexdigest      # => "d41d8cd98f00b204e9800998ecf8427e"
```

- **SEE** [Digest::Base#base64digest](../../../method/Digest=3a=3aBase/i/base64digest.md)
