# ARGF.class#each_byte

### def each_byte { |byte| ...} -> self
{: since=""}
### def each_byte               -> Enumerator
{: since=""}

ARGF の現在位置から 1 バイトずつ読み込み、それを整数として与え、ブロックを実行します。
ブロック引数byteは0..255のいずれかの整数です。

このメソッドはスクリプトに指定した引数([Object::ARGV](../../../method/Object/c/ARGV.md) を参照) をファイル名とみなして、それらのファイルを連結した 1 つの仮想ファイルを表すオブジェクトです。そのため、最初のファイルを最後まで読んだ後は次のファイルの内容を返します。現在位置の1バイトについてファイル名を得るには
[ARGF.class#filename](../../../method/ARGF=2eclass/i/filename.md) を使用します。

ブロックが与えられなかった場合は、[Enumerator](../../../class/Enumerator.md) オブジェクトを生成して返します。

```ruby title="例"
p ARGF.each_byte.to_a  # => [35, 32, ... 95, 10]
```

- **SEE** [IO#each_byte](../../../method/IO/i/each_byte.md)
