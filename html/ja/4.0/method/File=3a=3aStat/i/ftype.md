# File::Stat#ftype

### def ftype -> String

ファイルのタイプを表す文字列を返します。

文字列は以下のうちのいずれかです。

```text
"file"
"directory"
"characterSpecial"
"blockSpecial"
"fifo"
"link"
"socket"

"unknown"
```


```ruby title="例"
fs = File::Stat.new($0)
p fs.ftype # => "file"
p File::Stat.new($:[0]).ftype # => "directory"
```

Ruby 1.8 以降では、属性メソッドがシステムでサポートされていない場合 nil が返ります。
なお、Ruby 1.7 までは 0 が返っていました。
