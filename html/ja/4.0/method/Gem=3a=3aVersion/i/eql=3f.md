# Gem::Version#eql?

### def eql?(other) -> bool

self と other の [Gem::Version#version](../../../method/Gem=3a=3aVersion/i/version.md) のバージョンが等しいとき true を返します。
そうでなければ false を返します。

Comparable を include して作られた == と異なり、"1.0" と "1" は異なるものと判定します。

```ruby
ver0 = Gem::Version.create('1.0')   # #<Gem::Version "1.0">
ver1 = Gem::Version.create('1.0')   # #<Gem::Version "1.0">
ver2 = Gem::Version.create('1')     # #<Gem::Version "1">

p ver0.eql?(ver1)     # => true
p ver1.eql?(ver2)     # => false
p ver1 == ver2        # => true
```
