# Gem::Version.create

### def Gem::Version.create(input) -> Gem::Version | nil

[Gem::Version](../../../class/Gem=3a=3aVersion.md) のインスタンスを作成するためのファクトリメソッドです。

```ruby
ver1 = Gem::Version.create('1.3.17')   # => #<Gem::Version "1.3.17">
ver2 = Gem::Version.create(ver1)       # => #<Gem::Version "1.3.17">
ver3 = Gem::Version.create(nil)        # => nil
```

- **param** `input` -- [Gem::Version](../../../class/Gem=3a=3aVersion.md) のインスタンスか文字列を指定します。

- **raise** `ArgumentError` -- input がバージョンとして不正なオブジェクトである場合に発生します。

- **SEE** [Gem::Version.correct?](../../../method/Gem=3a=3aVersion/s/correct=3f.md)
