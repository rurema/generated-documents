# IO#each_codepoint

### def each_codepoint{|c| ... }     -> self
### def each_codepoint               -> Enumerator

IO の各コードポイントに対して繰り返しブロックを呼びだします。

ブロックの引数にはコードポイントを表す整数が渡されます。

ブロックを省略した場合には、[Enumerator](../../../class/Enumerator.md) を返します。

```ruby title="例"
IO.write("testfile", "abcdeあ")
File.open("testfile") do |f|
  f.each_codepoint { |i| p i }
end
# => 97
# 98
# 99
# 100
# 101
# 12354
```
