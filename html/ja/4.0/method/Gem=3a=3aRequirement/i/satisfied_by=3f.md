# Gem::Requirement#satisfied_by?

### def satisfied_by?(version) -> bool
### def ===(version) -> bool
### def =~(version) -> bool

引数 version が自身に含まれる全ての必要条件を満たす場合に true を返します。
そうでなければ、false を返します。

- **param** `version` -- [Gem::Version](../../../class/Gem=3a=3aVersion.md) のインスタンスを指定します。

```ruby
req = Gem::Requirement.new("~> 3.2.1")

p req.satisfied_by?(Gem::Version.new('3.2.9'))  # => true
p req.satisfied_by?(Gem::Version.new('3.3.0'))  # => false
```
