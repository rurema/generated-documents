# Fiddle::Handle.new

### def Fiddle::Handle.new(lib, flags=Fiddle::Handle::RTLD_LAZY|Fiddle::Handle::RTLD_GLOBAL) -> Fiddle::Handle
### def Fiddle::Handle.new(lib, flags=Fiddle::Handle::RTLD_LAZY|Fiddle::Handle::RTLD_GLOBAL) {|handle| ... }    -> Fiddle::Handle

ライブラリ lib をオープンし、Handle オブジェクトとして返します。

ブロックを指定すれば、生成した Handle を引数としてブロックを実行します。
Handle はブロックの終りで自動的にクローズされます。

flags で [man:dlopen(3)] の第2引数として渡すフラグを指定できます。
[Fiddle::Handle::RTLD_LAZY](../../../method/Fiddle=3a=3aHandle/c/RTLD_LAZY.md)、[Fiddle::Handle::RTLD_NOW](../../../method/Fiddle=3a=3aHandle/c/RTLD_NOW.md) 
のどちらか一方を指定する必要があり、またそれに [Fiddle::Handle::RTLD_GLOBAL](../../../method/Fiddle=3a=3aHandle/c/RTLD_GLOBAL.md) と OR を取ることができます。
詳しい意味は manpage([man:dlopen(3)]) を参照してください。

- **param** `lib` -- ライブラリを文字列で指定します。
- **param** `flags` -- フラグ
- **raise** `Fiddle::DLError` -- ライブラリのオープンに失敗した場合に発生します

```ruby title="例"
require 'fiddle'
  
h = Fiddle::Handle.new('libc.so.6')
i = h.sym('strlen')
func = Fiddle::Function.new(i, [Fiddle::TYPE_VOIDP], Fiddle::TYPE_INT)
p func.call("uxyz") # => 4
```
