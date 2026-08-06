# class OpenSSL::Digest < Digest::Class

ハッシュ関数のためのインターフェースを提供するクラスです。

このインターフェースには2通りの利用法が存在します。
一方は文字列から直接ハッシュを計算する ([OpenSSL::Digest.digest](../method/OpenSSL=3a=3aDigest/s/digest.md),
[Digest::Base.hexdigest](../method/Digest=3a=3aBase/s/hexdigest.md)) 方法です。短い文字列のダイジェストを取るときにはこちらを使えばよいでしょう。

もう一つはダイジェストオブジェクトを作成して、文字列を順次
[OpenSSL::Digest#update](../method/OpenSSL=3a=3aDigest/i/update.md) で渡すことでダイジェストを計算します。大きなファイルのハッシュ値を計算する場合などに利用します。

```ruby title="例"
require 'openssl'
digest = OpenSSL::Digest.new("sha256")

File.open(filename){|f|
  while data = f.read(1024)
    digest.update(data)
  end
}
puts digest.hexdigest
```

[digest](../library/digest.md) も参照してください。

## Class Methods

- [digest](../method/OpenSSL=3a=3aDigest/s/digest.md)
- [new](../method/OpenSSL=3a=3aDigest/s/new.md)

## Instance Methods

- [<<](../method/OpenSSL=3a=3aDigest/i/=3c=3c.md)
- [update](../method/OpenSSL=3a=3aDigest/i/update.md)
- [block_length](../method/OpenSSL=3a=3aDigest/i/block_length.md)
- [digest_length](../method/OpenSSL=3a=3aDigest/i/digest_length.md)
- [name](../method/OpenSSL=3a=3aDigest/i/name.md)
- [reset](../method/OpenSSL=3a=3aDigest/i/reset.md)
