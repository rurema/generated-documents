# Dir#rewind

### def rewind    -> self

ディレクトリストリームの読み込み位置を先頭に移動させます。

- **raise** `IOError` -- 既に自身が close している場合に発生します。

```ruby title="例"
Dir.open("testdir") do |d|
  p d.read   # => "."
  p d.rewind # => #<Dir:0x401b3fb0>
  p d.read   # => "."
end
```
