# Dir#pos=

### def pos=(pos)
### def seek(pos)    -> self

ディレクトリストリームの読み込み位置を pos に移動させます。
pos は [Dir#tell](../../../method/Dir/i/tell.md) で与えられた値でなければなりません。

- **param** `pos` -- 変更したい位置を整数で与えます。

- **raise** `IOError` -- 既に自身が close している場合に発生します。

```ruby title="例"
Dir.open("testdir") do |d|
  p d.read                 # => "."
  i = d.tell               # => 12
  p d.read                 # => ".."
  p d.seek(i)              # => #<Dir:0x401b3c40>
  p d.read                 # => ".."
end
```
