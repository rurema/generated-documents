# Digest::Base#digest!

### def digest! -> String

updateや<<によって追加した文字列に対するハッシュ値を文字列で返します。
[Digest::Base#digest](../../../method/Digest=3a=3aBase/i/digest.md)と違い、メソッドの処理後、オブジェクトの状態を初期状態(newした直後と同様の状態)に戻します。

返す文字列は、MD5では16バイト長、SHA1およびRMD160では20バイト長、
SHA256では32バイト長、SHA384では48バイト長、SHA512では64バイト長です。

```ruby title="例"
# MD5の場合
require 'digest/md5'
digest = Digest::MD5.new
digest.update("ruby")
p digest.digest! # => "X\345=\023$\356\366&_\333\227\260\216\331\252\337"
p digest.digest! # => "\324\035\214\331\217\000\262\004\351\200\t\230\354\370B~"
```

- **SEE** [Digest::Base#digest](../../../method/Digest=3a=3aBase/i/digest.md)、[Digest::Base#hexdigest!](../../../method/Digest=3a=3aBase/i/hexdigest=21.md)
