# Gem::Version#canonical_segments

### def canonical_segments -> [Integer | String]
{: since="2.5.0"}

`self` の [Gem::Version#segments](../../../method/Gem=3a=3aVersion/i/segments.md) から、末尾に連なる余分な `0` を取り除いた配列を返します。

`self` が [Gem::Version#prerelease?](../../../method/Gem=3a=3aVersion/i/prerelease=3f.md) であれば、英字が現れる直前までの `0` も取り除きます。
末尾の `0` の個数だけが異なるバージョン(`"1.0"` と `"1.0.0"` など)を同じ配列として
扱えるようにするためのメソッドです。

```ruby title="例"
p Gem::Version.new("1.0.0").canonical_segments     # => [1]
p Gem::Version.new("1.2.0").canonical_segments     # => [1, 2]
p Gem::Version.new("1.0.0.a.0").canonical_segments # => [1, "a"]
```

- **SEE** [Gem::Version#segments](../../../method/Gem=3a=3aVersion/i/segments.md)
