# Fiddle::Function.new

### def Fiddle::Function.new(ptr, args, ret_type, abi=Fiddle::Function::DEFAULT, name: nil) -> Fiddle::Function

ptr (関数ポインタ)から Fiddle::Function オブジェクトを生成します。

ptr には [Fiddle::Handle](../../../class/Fiddle=3a=3aHandle.md) から [Fiddle::Handle#sym](../../../method/Fiddle=3a=3aHandle/i/sym.md) などで取りだした関数ポインタ(を表す整数)、もしくは関数を指している
[Fiddle::Pointer](../../../class/Fiddle=3a=3aPointer.md) を渡します。

args、ret_type で関数の引数と返り値の型を指定します。これには以下の定数が利用できます。「-TYPE_INT」 のように符号を反転させると unsigned を意味します。
  - [Fiddle::TYPE_VOID](../../../method/Fiddle/c/TYPE_VOID.md)
  - [Fiddle::TYPE_VOIDP](../../../method/Fiddle/c/TYPE_VOIDP.md)
  - [Fiddle::TYPE_CHAR](../../../method/Fiddle/c/TYPE_CHAR.md)
  - [Fiddle::TYPE_SHORT](../../../method/Fiddle/c/TYPE_SHORT.md)
  - [Fiddle::TYPE_INT](../../../method/Fiddle/c/TYPE_INT.md)
  - [Fiddle::TYPE_LONG](../../../method/Fiddle/c/TYPE_LONG.md)
  - [Fiddle::TYPE_LONG_LONG](../../../method/Fiddle/c/TYPE_LONG_LONG.md)
  - [Fiddle::TYPE_FLOAT](../../../method/Fiddle/c/TYPE_FLOAT.md)
  - [Fiddle::TYPE_DOUBLE](../../../method/Fiddle/c/TYPE_DOUBLE.md)
  - [Fiddle::TYPE_INTPTR_T](../../../method/Fiddle/c/TYPE_INTPTR_T.md)
  - [Fiddle::TYPE_UINTPTR_T](../../../method/Fiddle/c/TYPE_UINTPTR_T.md)
  - [Fiddle::TYPE_PTRDIFF_T](../../../method/Fiddle/c/TYPE_PTRDIFF_T.md)
  - [Fiddle::TYPE_SIZE_T](../../../method/Fiddle/c/TYPE_SIZE_T.md)
  - [Fiddle::TYPE_SSIZE_T](../../../method/Fiddle/c/TYPE_SSIZE_T.md)

abi で呼出規約を指定します。
  - [Fiddle::Function::DEFAULT](../../../method/Fiddle=3a=3aFunction/c/DEFAULT.md)
  - [Fiddle::Function::STDCALL](../../../method/Fiddle=3a=3aFunction/c/STDCALL.md)
のどちらかを指定します。

```ruby
require 'fiddle'
  
h = Fiddle::Handle.new('libc.so.6')
func = Fiddle::Function.new(h.sym("strlen"), [Fiddle::TYPE_VOIDP], 
                            Fiddle::TYPE_INT, name: "strlen")
p func.ptr == h.sym("strlen") # => true
p func.call("abc") # => 3
p func.name # => "strlen"
```

- **param** `ptr` -- C の関数を指す [Fiddle::Pointer](../../../class/Fiddle=3a=3aPointer.md) オブジェクトもしくは
       アドレスを表す整数
- **param** `args` -- 引数の型を表す配列
- **param** `ret_type` -- 返り値の型
- **param** `abi` -- 呼出規約
- **param** `name` -- 関数の名前(文字列)
