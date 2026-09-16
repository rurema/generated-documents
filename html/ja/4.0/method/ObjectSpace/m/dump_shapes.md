# ObjectSpace?.dump_shapes

### module_function def dump_shapes(output: :file, since: 0) -> String | File | IO | nil

Ruby の shape 木(オブジェクトの内部レイアウトを表す情報)の内容を JSON 形式でダンプします。1 行につき 1 shape 分の JSON が出力されます。

- **param** `output` -- ダンプ結果の出力先を指定します。指定できる値は [ObjectSpace?.dump](../../../method/ObjectSpace/m/dump.md) の output と同じです(デフォルトは `:file`)。
- **param** `since` -- 0 以上の整数を指定します。正の整数を指定した場合、指定した shape_id 以降のシェイプのみをダンプします。現在の shape_id は [RubyVM.stat](../../../method/RubyVM/s/stat.md) の `:next_shape_id` で取得できます。デフォルトは 0 です。

```ruby title="例"
require 'objspace'

str = ObjectSpace.dump_shapes(output: :string)
puts str.lines.size
# => 225 (シェイプの状態に依存するため実行するたびに変わります)

puts str.lines.first
# => {"address":"0x...", "type":"SHAPE", "id":0, "depth":1, "shape_type":"ROOT",
#     "edges":10, "memsize":320}
# (address の値は実行するたびに変わります)
```

- **raise** `ArgumentError` -- output に [ObjectSpace?.dump](../../../method/ObjectSpace/m/dump.md) で指定できる値以外を指定した場合に発生します。

戻り値の内容は完全ではない事に注意してください。この内容はあくまでもヒントとして扱う必要があります。

本メソッドは CRuby 以外では動作しない、実験的なメソッドです。出力のフォーマットは将来のバージョンで変更される可能性があります。

- **SEE** [ObjectSpace?.dump](../../../method/ObjectSpace/m/dump.md), [ObjectSpace?.dump_all](../../../method/ObjectSpace/m/dump_all.md)
