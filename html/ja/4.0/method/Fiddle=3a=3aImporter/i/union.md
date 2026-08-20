# Fiddle::Importer#union

### def union(signature) -> Class

C の共用体型に対応する Ruby のクラスを構築して返します。

共用体型を Ruby 上で定義する方法は [Fiddle::Importer#struct](../../../method/Fiddle=3a=3aImporter/i/struct.md) とほぼ同様です。C における

```c
typedef union epoll_data
{
  void *ptr;
  int fd;
  uint32_t u32;
  uint64_t u64;
} epoll_data_t;
```

は、Ruby上では

```ruby
require 'fiddle/import'
  
module M
  extend Fiddle::Importer
  dlload "libc.so.6"
  typealias("uint32_t", "unsigned int")
  typealias("uint64_t", "unsigned long long")
  
  EPollData = union(["void *ptr",
                     "int fd",
                     "uint32_t u32",
                     "uint64_t u64",
                    ])
end
```

となります。

返されるクラスは [Fiddle::CUnion](../../../class/Fiddle=3a=3aCUnion.md) を継承しています。

Ruby 1.9 ではこのメソッドで返されるクラスは正しく動作しません。
Ruby 2.0 以降では修正されています。

- **param** `signature` -- 共用体の各要素を文字列で表現したものの配列
