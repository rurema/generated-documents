# Gem::Version#segments

### def segments -> [Integer | String]
{: since="1.9.2"}

`self` のバージョン文字列をピリオド区切りの各要素に分解した配列を返します。

数字だけの要素は `Integer` に、それ以外の要素は `String` に変換されます。
呼び出すたびに新しい配列を返すので、返り値を破壊的に変更しても `self` には影響しません。

```ruby title="例"
p Gem::Version.new("1.2.3").segments   # => [1, 2, 3]
p Gem::Version.new("1.2.3.a").segments # => [1, 2, 3, "a"]
```

- **SEE** [Gem::Version#canonical_segments](../../../method/Gem=3a=3aVersion/i/canonical_segments.md)
