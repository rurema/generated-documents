# Prism::ParseResult#data_loc

### def data_loc -> Prism::Location | nil

ソースコード中に `__END__` 行が存在する場合、その行からファイル末尾までの範囲を表す [Prism::Location](../../../class/Prism=3a=3aLocation.md) を返します。`__END__` 以降の内容は組み込み定数 `DATA` に読み込まれる部分に対応します。`__END__` が存在しない場合は nil を返します。

```ruby title="例"
require "prism"

result = Prism.parse(<<~RUBY)
  puts "hi"
  __END__
  some data here
RUBY
p result.data_loc.class
# => Prism::Location
p result.data_loc.slice
# => "__END__\nsome data here\n"

p Prism.parse("puts 1").data_loc # => nil
```
