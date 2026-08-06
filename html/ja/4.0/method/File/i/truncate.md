# File#truncate

### def truncate(length)    -> 0

ファイルのサイズを最大 length バイトにします。

サイズの変更に成功すれば 0 を返します。失敗した場合は例外
[Errno::EXXX](../../../class/Errno=3a=3aEXXX.md) が発生します。

- **raise** `IOError` -- 自身が書き込み用にオープンされていなければ発生します。

- **raise** `Errno::EXXX` -- サイズの変更に失敗した場合に発生します。

```ruby title="例"
IO.write("testfile", "1234567890")
File.open("testfile", "a") do |f|
  p f.truncate(5) # => 0
  p f.size      # => 5
end
```
