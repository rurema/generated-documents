# class Digest::Base < Digest::Class

すべての Digest::XXX クラスの基底クラスです。

例えば、MD5 値を得るには以下のようにします。

```ruby
require 'digest/md5'

p Digest::MD5.hexdigest('abc')               # => '900150983cd24fb0d6963f7d28e17f72'
p Digest::MD5.file('ruby-1.8.5.tar.gz').to_s # => '3fbb02294a8ca33d4684055adba5ed6f'
```

すべての Digest::XXX クラスは以下の共通インタフェースを持ちます。

## Class Methods

- [base64digest](../method/Digest=3a=3aBase/s/base64digest.md)
- [digest](../method/Digest=3a=3aBase/s/digest.md)
- [file](../method/Digest=3a=3aBase/s/file.md)
- [hexdigest](../method/Digest=3a=3aBase/s/hexdigest.md)
- [new](../method/Digest=3a=3aBase/s/new.md)

## Instance Methods

- [<<](../method/Digest=3a=3aBase/i/=3c=3c.md)
- [update](../method/Digest=3a=3aBase/i/update.md)
- [==](../method/Digest=3a=3aBase/i/=3d=3d.md)
- [base64digest](../method/Digest=3a=3aBase/i/base64digest.md)
- [base64digest!](../method/Digest=3a=3aBase/i/base64digest=21.md)
- [block_length](../method/Digest=3a=3aBase/i/block_length.md)
- [clone](../method/Digest=3a=3aBase/i/clone.md)
- [dup](../method/Digest=3a=3aBase/i/dup.md)
- [digest](../method/Digest=3a=3aBase/i/digest.md)
- [digest!](../method/Digest=3a=3aBase/i/digest=21.md)
- [digest_length](../method/Digest=3a=3aBase/i/digest_length.md)
- [length](../method/Digest=3a=3aBase/i/length.md)
- [size](../method/Digest=3a=3aBase/i/size.md)
- [file](../method/Digest=3a=3aBase/i/file.md)
- [hexdigest](../method/Digest=3a=3aBase/i/hexdigest.md)
- [to_s](../method/Digest=3a=3aBase/i/to_s.md)
- [hexdigest!](../method/Digest=3a=3aBase/i/hexdigest=21.md)
- [reset](../method/Digest=3a=3aBase/i/reset.md)
