# Fiddle::Function#call

### def call(*args) -> Integer|DL::CPtr|nil

関数を呼び出します。

[Fiddle::Function.new](../../../method/Fiddle=3a=3aFunction/s/new.md) で指定した引数と返り値の型に基いて
Ruby のオブジェクトを適切に C のデータに変換して C の関数を呼び出し、その返り値を Ruby のオブジェクトに変換して返します。

引数の変換は以下の通りです。

- **void* (つまり任意のポインタ型)**:
  nil ならば C の NULL に変換されます
  [Fiddle::Pointer](../../../class/Fiddle=3a=3aPointer.md) は保持している C ポインタに変換されます。
  文字列であればその先頭ポインタになります。
  [IO](../../../class/IO.md) オブジェクトであれば FILE* が渡されます。
  整数であればそれがアドレスとみなされます。
  to_ptr を持っているならば、それを呼びだし Fiddle::Pointer に変換したものを用います。
  to_i を持っているならば、それを呼びだし結果の整数をアドレスと見なします
    
- **(unsigned) char/short/int/long/long long**:
  Ruby の整数を C の整数に変換します。

- **`double/float`**:
  Ruby の整数 or 浮動小数点数を C の浮動小数点数に変換します
  
返り値の変換は以下の通りです。

- **`void`**:
  nil を返します

- **(unsigned) char/short/int/long/long long**:
  C の整数を Ruby の整数に変換します

- **void*(つまり任意のポインタ型)**:
  C のポインタを保持した [Fiddle::Pointer](../../../class/Fiddle=3a=3aPointer.md) を返します。

- **param** `args` -- 関数の引数
- **SEE** [Fiddle::Function.new](../../../method/Fiddle=3a=3aFunction/s/new.md)
