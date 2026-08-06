# Gem::Version#release

### def release -> Gem::Version

self をリリースバージョンにした [Gem::Version](../../../class/Gem=3a=3aVersion.md) オブジェクトを返します。

プレリリースではないバージョンであれば self を返します。

```ruby title="例"
p Gem::Version.new('1.2.0a').release # => #<Gem::Version "1.2.0">
p Gem::Version.new('1.2.0').release  # => #<Gem::Version "1.2.0">
```

- **SEE** [Gem::Version#prerelease?](../../../method/Gem=3a=3aVersion/i/prerelease=3f.md)
