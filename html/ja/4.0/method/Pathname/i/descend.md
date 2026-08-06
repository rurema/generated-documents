# Pathname#descend

### def descend {|pathname| ... } -> nil
### def descend                   -> Enumerator

self のパス名の親から子供へと辿っていったときの各パス名を新しい
Pathname オブジェクトとして生成し、ブロックへの引数として渡して実行します。
ブロックを省略した場合は [Enumerator](../../../class/Enumerator.md) を返します。

```ruby title="例"
require 'pathname'

Pathname.new('/path/to/some/file.rb').descend {|v| p v}
# => #<Pathname:/>
#    #<Pathname:/path>
#    #<Pathname:/path/to>
#    #<Pathname:/path/to/some>
#    #<Pathname:/path/to/some/file.rb>

Pathname.new('path/to/some/file.rb').descend {|v| p v}
# => #<Pathname:path>
#    #<Pathname:path/to>
#    #<Pathname:path/to/some>
#    #<Pathname:path/to/some/file.rb>
```

ファイルシステムにはアクセスしません。
