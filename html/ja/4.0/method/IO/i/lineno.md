# IO#lineno

### def lineno    -> Integer

現在の行番号を整数で返します。実際には [IO#gets](../../../method/IO/i/gets.md) が呼ばれた回数です。
改行以外のセパレータで gets が呼ばれた場合など、実際の行番号と異なる場合があります。

- **raise** `IOError` -- 読み込み用にオープンされていなければ発生します。

```ruby
f = File.new("testfile")
p f.lineno               # => 0
p f.gets                 # => "This is line one\n"
p f.lineno               # => 1
p f.gets                 # => "This is line two\n"
p f.lineno               # => 2
```

- **SEE** [m:$.]
