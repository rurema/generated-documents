# ARGF.class#to_a

### def readlines(rs = $/)   -> Array
{: since=""}
### def readlines(limit)     -> Array
{: since=""}
### def readlines(rs, limit) -> Array
{: since=""}
### def to_a(rs = $/)        -> Array
{: since=""}
### def to_a(limit)          -> Array
{: since=""}
### def to_a(rs, limit)      -> Array
{: since=""}

ARGFの各行を配列に読み込んで返します。rsがnilの場合は要素に各ファイルをすべて読み込んだ配列を返します。

- **param** `rs` -- 行区切り文字

- **param** `limit` -- 最大の読み込みバイト数

```ruby
lines = ARGF.readlines
p lines[0]              # => "This is line one\n"
```

- **SEE** [m:$/], [Kernel?.readlines](../../../method/Kernel/m/readlines.md), [IO#readlines](../../../method/IO/i/readlines.md)
