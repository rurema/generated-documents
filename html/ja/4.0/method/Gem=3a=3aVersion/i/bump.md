# Gem::Version#bump

### def bump -> Gem::Version

最後の一桁を切り上げた新しい [Gem::Version](../../../class/Gem=3a=3aVersion.md) のインスタンスを返します。

ただし、英字のプレリリースの部分は、無視されます。

```ruby
p Gem::Version.new('5.3.1').bump     # => #<Gem::Version "5.4">
p Gem::Version.new('5.3.1.a.1').bump # => #<Gem::Version "5.4">
p Gem::Version.new('5.3.1.3.1').bump # => #<Gem::Version "5.3.1.4">
```
