# Gem::Platform#deconstruct_keys

### def deconstruct_keys(keys) -> {Symbol => String | nil}

`self` を `cpu`・`os`・`version` をキーとするハッシュに分解して返します。

パターンマッチングのハッシュパターンに対応するためのメソッドです。

- **param** `keys` -- パターンマッチングの実装から渡されるキーの配列です。`self` では無視されます。

```ruby title="例"
p Gem::Platform.new("x86_64-linux").deconstruct_keys(nil)
# => {cpu: "x86_64", os: "linux", version: nil}

result = case Gem::Platform.new("x86_64-linux")
         in cpu: "x86_64", os: "linux"
           :matched
         end
p result # => :matched
```

- **SEE** [Gem::Platform#deconstruct](../../../method/Gem=3a=3aPlatform/i/deconstruct.md), [Gem::Platform#to_a](../../../method/Gem=3a=3aPlatform/i/to_a.md)
