# ARGF.class#gets

### def gets(rs = $/, chomp: false)   -> String | nil
{: since=""}
### def gets(limit, chomp: false)     -> String | nil
{: since=""}
### def gets(rs, limit, chomp: false) -> String | nil
{: since=""}

ARGFの現在位置から一行ずつ文字列として読み込みます。EOF に到達した時には nil を返します。

- **param** `rs` -- 行の区切りを文字列で指定します。rs に nil を指定すると行区切りなしとみなします。空文字列 "" を指定すると連続する改行を行の区切りとみなします(パラグラフモード)。

- **param** `limit` -- 最大の読み込みバイト数

- **param** `chomp` -- true を指定すると各行の末尾から "\n", "\r", または "\r\n" を取り除きます。

```ruby title="例"
# $ echo "line1\nline2\nline3\n\nline4\n" > test.txt
# $ ruby test.rb test.txt

# test.rb
p ARGF.gets                # => "line1\n"
```

```ruby title="例"
# $ echo "line1\nline2\nline3\n\nline4\n" > test.txt
# $ ruby test.rb test.txt

# test.rb
p ARGF.gets(2)                # => "li"
```

```ruby title="例"
# $ echo "line1\nline2\nline3\n\nline4\n" > test.txt
# $ ruby test.rb test.txt

# test.rb
p ARGF.gets("e")                # => "line"
```

```ruby title="例"
# $ echo "line1\nline2\nline3\n\nline4\n" > test.txt
# $ ruby test.rb test.txt

# test.rb
p ARGF.gets("")                # => "line1\nline2\nline3\n\n"
```

- **SEE** [Kernel?.gets](../../../method/Kernel/m/gets.md), [IO#gets](../../../method/IO/i/gets.md), [ARGF.class#getbyte](../../../method/ARGF=2eclass/i/getbyte.md), [ARGF.class#getc](../../../method/ARGF=2eclass/i/getc.md)
