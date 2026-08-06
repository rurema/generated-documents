# class NoMatchingPatternKeyError < NoMatchingPatternError

パターンマッチのハッシュパターンで、対応するキーが見つからない場合に発生します。

キーは存在するものの値がパターンに一致しない場合は、親クラスの [NoMatchingPatternError](../class/NoMatchingPatternError.md) が発生します。

パターンマッチについては [spec/pattern_matching](../doc/spec=2fpattern_matching.md) を参照してください。

```ruby
data = {name: "ken"}
begin
  data => {age: Integer}
rescue NoMatchingPatternKeyError => e
  p e.key                # => :age
  p e.matchee == data    # => true
end
```

## Class Methods

- [new](../method/NoMatchingPatternKeyError/s/new.md)

## Instance Methods

- [key](../method/NoMatchingPatternKeyError/i/key.md)
- [matchee](../method/NoMatchingPatternKeyError/i/matchee.md)
