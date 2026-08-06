# Pathname#realdirpath

### def realdirpath(basedir = nil) -> Pathname

[Pathname#realpath](../../../method/Pathname/i/realpath.md) とほぼ同じで、最後のコンポーネントは実際に存在しなくてもエラーになりません。

- **param** `basedir` -- ベースディレクトリを指定します。省略するとカレントディレクトリになります。

```ruby title="例"
require "pathname"

path = Pathname("/not_exist")
path.realdirpath  # => #<Pathname:/not_exist>
path.realpath     # => Errno::ENOENT

# 最後ではないコンポーネント(/not_exist_1)も存在しないのでエラーになる。
path = Pathname("/not_exist_1/not_exist_2")
path.realdirpath  # => Errno::ENOENT
```

- **SEE** [Pathname#realpath](../../../method/Pathname/i/realpath.md)
