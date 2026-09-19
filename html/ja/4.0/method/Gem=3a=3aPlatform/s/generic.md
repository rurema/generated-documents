# Gem::Platform.generic

### def Gem::Platform.generic(platform) -> Gem::Platform | String

platform に対応する一般化されたプラットフォームを返します。

Java 用や各種 Windows 用としてまとめて扱われる代表的なプラットフォームが存在する場合はそれを返します。
該当するものが無い場合や、platform が nil または [Gem::Platform::RUBY](../../../method/Gem=3a=3aPlatform/c/RUBY.md) の場合は
`Gem::Platform::RUBY` を返します。

- **param** `platform` -- 一般化したい [Gem::Platform](../../../class/Gem=3a=3aPlatform.md) のインスタンス、または nil を指定します。

```ruby title="例"
p Gem::Platform.generic(Gem::Platform::RUBY)               # => "ruby"
p Gem::Platform.generic(Gem::Platform.new("x86_64-linux")) # => "ruby"
```

- **SEE** [Gem::Platform.sort_priority](../../../method/Gem=3a=3aPlatform/s/sort_priority.md)
