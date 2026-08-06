# Fiddle::Importer#struct

### def struct(signature) -> Class

C の構造体型に対応する Ruby のクラスを構築して返します。

構造体の各要素は C と似せた表記ができます。そしてそれを配列で signature に渡してデータを定義します。例えば C における

```c
struct timeval {
  long tv_sec;
  long tv_usec;
};
```

という構造体型に対応して

```ruby
Timeval = struct(["long tv_sec", "long tv_usec"])
```

として構造体に対応するクラスを生成します。

このメソッドが返すクラスには以下のメソッドが定義されています
  - クラスメソッド malloc
  - initialize
  - to_ptr
  - to_i
  - 構造体の各メンバへのアクセサ
返されるクラスは [Fiddle::CStruct](../../../class/Fiddle=3a=3aCStruct.md) を継承しています。詳しくはそちらを参照してください。


- **param** `signature` -- 構造体の各要素を文字列で表現したものの配列

```ruby
require 'fiddle/import'
  
module M
  extend Fiddle::Importer
  dlload "libc.so.6"
  extern "int gettimeofday(void*, void*)"
  Timeval = struct(["long tv_sec", "long tv_usec"])
end
  
time = M::Timeval.malloc
M.gettimeofday(time, Fiddle::NULL)
p time.tv_sec
p time.tv_usec
```
