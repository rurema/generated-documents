# Gem::Requirement::OPS

### const OPS -> Hash

比較演算子と対応する処理を格納したハッシュです。次の内容と等価です。

```ruby
OPS = { #:nodoc:
  "="  =>  lambda {|v, r| v == r },
  "!=" =>  lambda {|v, r| v != r },
  ">"  =>  lambda {|v, r| v >  r },
  "<"  =>  lambda {|v, r| v <  r },
  ">=" =>  lambda {|v, r| v >= r },
  "<=" =>  lambda {|v, r| v <= r },
  "~>" =>  lambda {|v, r| v >= r && v.release < r.bump },
}.freeze
```

次のように、[Gem::Version](../../../class/Gem=3a=3aVersion.md) どうしを比較します。

```ruby
p Gem::Requirement::OPS["="].call(Gem::Version.new('3.1'), Gem::Version.new('3.0'))   # => false
p Gem::Requirement::OPS["~>"].call(Gem::Version.new('3.1'), Gem::Version.new('3.0'))  # => true
```
