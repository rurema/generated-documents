# library fiddle/types

C の型の別名を定義するライブラリです。

[Fiddle::Win32Types](../class/Fiddle=3a=3aWin32Types.md) や [Fiddle::BasicTypes](../class/Fiddle=3a=3aBasicTypes.md) を [Module#include](../method/Module/i/include.md) することで、[Fiddle::Importer#extern](../method/Fiddle=3a=3aImporter/i/extern.md) や [Fiddle::Importer#struct](../method/Fiddle=3a=3aImporter/i/struct.md) で利用できる型が増えます。内部で [Fiddle::Importer#typealias](../method/Fiddle=3a=3aImporter/i/typealias.md) を呼び出しています。

実装の問題があるため、 [Fiddle::Importer#dlload](../method/Fiddle=3a=3aImporter/i/dlload.md) を呼びだしてから
include してください。

```ruby title="例"
require 'fiddle/import'
require 'fiddle/types'
  
module M
  extend Fiddle::Importer
  dlload "libc.so.6" # include の前に dlload を呼ぶ
  include Fiddle::BasicTypes
end
  
# uint は Fiddle::BasicTypes によって定義された型で、unsigned int の別名
p(M.sizeof("uint") == M.sizeof("unsigned int"))
```
