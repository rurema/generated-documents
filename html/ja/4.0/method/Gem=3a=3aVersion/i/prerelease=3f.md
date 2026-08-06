# Gem::Version#prerelease?

### def prerelease? -> bool

self がプレリリースと思われる文字を含むバージョンかどうかを返します。

```ruby title="例"
p Gem::Version.new('1.2.0a').prerelease? # => true
p Gem::Version.new('1.2.0').prerelease?  # => false
```

- **SEE** [Gem::Version#release](../../../method/Gem=3a=3aVersion/i/release.md)
