# IO#each_char

### def each_char{|c| ... }     -> self
### def each_char               -> Enumerator

self に含まれる文字を一文字ずつブロックに渡して評価します。

self は読み込み用にオープンされていなければなりません。

ブロックを省略した場合は各文字について繰り返す [Enumerator](../../../class/Enumerator.md) を返します。

- **raise** `IOError` -- self が読み込み用にオープンされていない場合に発生します。

```ruby
f = File.new("testfile")
p f.each_char {|c| print c, ' ' } # => #<File:testfile>
```
