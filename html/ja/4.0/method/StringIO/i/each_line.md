# StringIO#each_line

### def each(rs = $/){|line| ... }       -> self
### def each_line(rs = $/){|line| ... }  -> self
### def each(rs = $/)       -> Enumerator
### def each_line(rs = $/)  -> Enumerator

自身から 1 行ずつ読み込み、それを引数として与えられたブロックを実行します。

- **param** `rs` -- 行の区切りを文字列で指定します。rs に nil を指定すると行区切りなしとみなします。空文字列 "" を指定すると連続する改行を行の区切りとみなします(パラグラフモード)。

- **raise** `IOError` -- 自身が読み取り不可なら発生します。

```ruby title="例"
require "stringio"
a = StringIO.new("hoge\nfoo\n")
a.each{|l| p l }
#=> "hoge\n"
#   "foo\n"
```

- **SEE** [m:$/]
- **SEE** [IO#each_line](../../../method/IO/i/each_line.md)
