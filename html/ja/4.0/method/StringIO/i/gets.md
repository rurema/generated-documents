# StringIO#gets

### def gets(rs = $/)    -> String | nil

自身から 1 行読み込んで、その文字列を返します。文字列の終端に到達した時には nil を返します。
[m:$_] に読み込んだ行がセットされます。

- **param** `rs` -- 行の区切りを文字列で指定します。rs に nil を指定すると行区切りなしとみなします。空文字列 "" を指定すると連続する改行を行の区切りとみなします(パラグラフモード)。

- **raise** `IOError` -- 自身が読み込み用にオープンされていなければ発生します。

```ruby title="例"
require "stringio"
a = StringIO.new("hoge")
p a.gets                #=> "hoge"
p $_                    #=> "hoge"
p a.gets                #=> nil
p $_                    #=> nil
```

- **SEE** [m:$/]
