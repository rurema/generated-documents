# class Enumerator::Lazy < Enumerator

map や select などのメソッドの遅延評価版を提供するためのクラス。

動作は通常の Enumerator と同じですが、以下のメソッドが遅延評価を行う
(つまり、配列ではなく Enumerator を返す) ように再定義されています。

- map/collect
- flat_map/collect_concat
- filter_map
- select/find_all
- reject
- grep, grep_v
- take, take_while
- drop, drop_while
- slice_before, slice_after, slice_when
- chunk, chunk_while
- uniq
- compact
- zip (※互換性のため、ブロックを渡さないケースのみlazy)

Lazyオブジェクトは、[Enumerable#lazy](../method/Enumerable/i/lazy.md)メソッドによって生成されます。

Lazyから値を取り出すには、[Enumerator::Lazy#force](../method/Enumerator=3a=3aLazy/i/force.md) または
[Enumerable#first](../method/Enumerable/i/first.md) を呼びます。

```ruby title="例"
# 二乗して偶数になるような整数を、小さい方から5個表示する
p 1.step.lazy.select{|n| (n**2).even?}.first(5)
# LTSV (http://ltsv.org/) 形式のログファイルから検索を行う
# Enumerator::Lazy#map は配列ではなく Enumerator を返すため、
# 巨大な配列を確保しようとしてメモリを使い切ったりはしない
open("log.txt"){|f|
  f.each_line.lazy.map{|line|
    Hash[line.split(/\t/).map{|s| s.split(/:/, 2)}]
  }.select{|hash|
    hash["req"] =~ /GET/ && hash["status"] == "200"
  }.each{|hash|
    p hash
  }
}
```

## Class Methods

- [new](../method/Enumerator=3a=3aLazy/s/new.md)

## Instance Methods

- [chunk](../method/Enumerator=3a=3aLazy/i/chunk.md)
- [chunk_while](../method/Enumerator=3a=3aLazy/i/chunk_while.md)
- [collect](../method/Enumerator=3a=3aLazy/i/collect.md)
- [map](../method/Enumerator=3a=3aLazy/i/map.md)
- [collect_concat](../method/Enumerator=3a=3aLazy/i/collect_concat.md)
- [flat_map](../method/Enumerator=3a=3aLazy/i/flat_map.md)
- [compact](../method/Enumerator=3a=3aLazy/i/compact.md)
- [drop](../method/Enumerator=3a=3aLazy/i/drop.md)
- [drop_while](../method/Enumerator=3a=3aLazy/i/drop_while.md)
- [eager](../method/Enumerator=3a=3aLazy/i/eager.md)
- [enum_for](../method/Enumerator=3a=3aLazy/i/enum_for.md)
- [to_enum](../method/Enumerator=3a=3aLazy/i/to_enum.md)
- [filter](../method/Enumerator=3a=3aLazy/i/filter.md)
- [find_all](../method/Enumerator=3a=3aLazy/i/find_all.md)
- [select](../method/Enumerator=3a=3aLazy/i/select.md)
- [filter_map](../method/Enumerator=3a=3aLazy/i/filter_map.md)
- [force](../method/Enumerator=3a=3aLazy/i/force.md)
- [grep](../method/Enumerator=3a=3aLazy/i/grep.md)
- [grep_v](../method/Enumerator=3a=3aLazy/i/grep_v.md)
- [lazy](../method/Enumerator=3a=3aLazy/i/lazy.md)
- [reject](../method/Enumerator=3a=3aLazy/i/reject.md)
- [slice_after](../method/Enumerator=3a=3aLazy/i/slice_after.md)
- [slice_before](../method/Enumerator=3a=3aLazy/i/slice_before.md)
- [slice_when](../method/Enumerator=3a=3aLazy/i/slice_when.md)
- [take](../method/Enumerator=3a=3aLazy/i/take.md)
- [take_while](../method/Enumerator=3a=3aLazy/i/take_while.md)
- [uniq](../method/Enumerator=3a=3aLazy/i/uniq.md)
- [with_index](../method/Enumerator=3a=3aLazy/i/with_index.md)
- [zip](../method/Enumerator=3a=3aLazy/i/zip.md)
