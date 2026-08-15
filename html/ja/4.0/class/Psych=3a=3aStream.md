# class Psych::Stream < Psych::Visitors::YAMLTree

入力されたオブジェクトから変換された YAML document を指定した
IO に出力する機能を持つクラスです。

start で変換を開始し、push で変換する Ruby オブジェクトを渡し、最後に finish を呼ぶことで変換を完了します。

```ruby
require 'psych'

stream = Psych::Stream.new($stdout)
stream.start
stream.push({:foo => 'bar'})
stream.finish
```

YAML document は(バッファリングされずに)直接 $stdout に出力されます。

finish を確実に呼び出すためには [Psych::Stream#start](../method/Psych=3a=3aStream/i/start.md) メソッドをブロック付きで呼び出すとよいでしょう。

```ruby
require 'psych'

stream = Psych::Stream.new($stdout)
stream.start do |em|
  em.push(:foo => 'bar')
end
```

基本的な仕組みは [Psych::Visitors::YAMLTree](../class/Psych=3a=3aVisitors=3a=3aYAMLTree.md) と似ています。

## Class Methods

- [new](../method/Psych=3a=3aStream/s/new.md)

## Instance Methods

- [finish](../method/Psych=3a=3aStream/i/finish.md)
- [start](../method/Psych=3a=3aStream/i/start.md)
