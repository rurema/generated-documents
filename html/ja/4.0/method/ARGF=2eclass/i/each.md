# ARGF.class#each

### def each(rs = $/) { |line| ... }             -> self
{: since=""}
### def each_line(rs = $/) { |line| ... }        -> self
{: since=""}
### def each(rs = $/, limit) { |line| ... }      -> self
{: since=""}
### def each_line(rs = $/, limit) { |line| ... } -> self
{: since=""}
### def each(rs = $/)                            -> Enumerator
{: since=""}
### def each_line(rs = $/)                       -> Enumerator
{: since=""}
### def each(rs = $/, limit)                     -> Enumerator
{: since=""}
### def each_line(rs = $/, limit)                -> Enumerator
{: since=""}

ARGFの現在位置から 1 行ずつ文字列として読み込み、それを引数として与えられたブロックを実行します。

ブロックが与えられなかった場合は、[Enumerator](../../../class/Enumerator.md) オブジェクトを生成して返します。

このメソッドはスクリプトに指定した引数([Object::ARGV](../../../method/Object/c/ARGV.md) を参照) をファイル名とみなして、それらのファイルを連結した 1 つの仮想ファイルを表すオブジェクトです。そのため、最初のファイルを最後まで読んだ後は次のファイルの内容を返します。現在の行についてファイル名や行数を得るには
[ARGF.class#filename](../../../method/ARGF=2eclass/i/filename.md) と [ARGF.class#lineno](../../../method/ARGF=2eclass/i/lineno.md) を使用します。

- **param** `rs` -- 行の区切りを文字列で指定します。nil を指定すると行区切りなしとみなします。空文字列 "" を指定すると連続する改行を行の区切りとみなします(パラグラフモード)。

- **param** `limit` -- 各行の最大の読み込みバイト数

例: ARGFの各ファイル名(最初に1回のみ)、行番号、内容を表示

```ruby
ARGF.each_line do |line|
  puts ARGF.filename if ARGF.lineno == 1
  puts "#{ARGF.lineno}: #{line}"
end
```

- **SEE** [IO#each](../../../method/IO/i/each.md), [IO#each_line](../../../method/IO/i/each_line.md)
