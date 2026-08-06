# Digest::Base#hexdigest!

### def hexdigest! -> String

updateや<<によって追加した文字列に対するハッシュ値を、
ASCIIコードを使って16進数の列を示す文字列にエンコードして返します。
[Digest::Base#hexdigest](../../../method/Digest=3a=3aBase/i/hexdigest.md)と違い、メソッドの処理後、オブジェクトの状態を初期状態(newした直後と同様の状態)に戻します。

```ruby title="例"
# MD5の場合
require 'digest/md5'
digest = Digest::MD5.new
digest.update("ruby")
p digest.hexdigest! # => "58e53d1324eef6265fdb97b08ed9aadf"
p digest.hexdigest! # => "d41d8cd98f00b204e9800998ecf8427e"
```

- **SEE** [Digest::Base#hexdigest](../../../method/Digest=3a=3aBase/i/hexdigest.md)、[Digest::Base#digest!](../../../method/Digest=3a=3aBase/i/digest=21.md)
