# Pathname.mktmpdir

### def Pathname.mktmpdir -> Pathname
### def Pathname.mktmpdir {|dir| ... } -> object

一時ディレクトリを作成し、そのパスを [Pathname](../../../class/Pathname.md) オブジェクトでラップして返します。

ブロックを指定した場合は、ブロックの終了時にディレクトリを削除します。ブロックの評価値を返します。

```ruby title="例"
require 'pathname'

Pathname.mktmpdir {|dir|
  p dir.class   # => Pathname
  # 出力例: 動作環境により出力は異なります。
  p dir         # => #<Pathname:/tmp/d20260909-5-7sp1c2>
}
```

- **SEE** [Dir.mktmpdir](../../../method/Dir/s/mktmpdir.md)
