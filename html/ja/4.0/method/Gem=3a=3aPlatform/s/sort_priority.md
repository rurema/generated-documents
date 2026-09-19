# Gem::Platform.sort_priority

### def Gem::Platform.sort_priority(platform) -> Integer

ソートする際に platform を優先させるための整数を返します。

platform が [Gem::Platform::RUBY](../../../method/Gem=3a=3aPlatform/c/RUBY.md) であれば -1 を、そうでなければ 1 を返します。
値が小さいほど優先順位が高いことを表します。

- **param** `platform` -- 優先順位を調べたい [Gem::Platform](../../../class/Gem=3a=3aPlatform.md) のインスタンスを指定します。

```ruby title="例"
p Gem::Platform.sort_priority(Gem::Platform::RUBY)               # => -1
p Gem::Platform.sort_priority(Gem::Platform.new("x86_64-linux")) # => 1
```
