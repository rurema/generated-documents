# Fiddle::Importer#bind

### def bind(signature, *opts){ ... } -> Fiddle::Function

Ruby のブロックを C の関数で wrap し、その関数をモジュールにインポートします。

これでインポートされた関数はモジュール関数として定義されます。
また、[Fiddle::Importer#\[\]](../../../method/Fiddle=3a=3aImporter/i/=5b=5d.md) で [Fiddle::Function](../../../class/Fiddle=3a=3aFunction.md) オブジェクトとして取り出すことができます。

signature で関数の名前とシグネチャを指定します。例えば
"int compare(void*, void*)" のように指定します。

opts には :stdcall もしくは :cdecl を渡すことができ、呼出規約を明示できます。

- **return** -- インポートした関数を表す [Fiddle::Function](../../../class/Fiddle=3a=3aFunction.md) オブジェクトを返します。

- **param** `signature` -- 関数の名前とシグネチャ
- **param** `opts` -- オプション

```ruby title="例"
require 'fiddle/import'
  
module M
  extend Fiddle::Importer
  dlload "libc.so.6"
  typealias "size_t", "unsigned long"
  extern "int qsort(void*, size_t, size_t, void*)"
    
  bind("int compare(void*, void*)"){|px, py|
    x = px.to_s(Fiddle::SIZEOF_INT).unpack("i!")
    y = py.to_s(Fiddle::SIZEOF_INT).unpack("i!")

    x <=> y
  }
end
  
data = [32, 180001, -13, -1, 0, 49].pack("i!*")
M.qsort(Fiddle::Pointer[data], 6, Fiddle::SIZEOF_INT, M["compare"])
p data.unpack("i!*") # => [-13, -1, 0, 32, 49, 180001]
```
