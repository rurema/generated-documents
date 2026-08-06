# ARGF.class#getc

### def getc -> String | nil
{: since=""}

self から 1 文字読み込んで返します。EOF に到達した時には nil を返します。

ARGF はスクリプトに指定した引数([Object::ARGV](../../../method/Object/c/ARGV.md) を参照) をファイル名とみなして、それらのファイルを連結した 1 つの仮想ファイルを表すオブジェクトです。そのため、最初のファイルを最後まで読んだ後は次のファイルの内容を返します。

```console
$ echo "foo" > file1
$ echo "bar" > file2
$ ruby argf.rb file1 file2

ARGF.getc # => "f"
ARGF.getc # => "o"
ARGF.getc # => "o"
ARGF.getc # => "\n"
ARGF.getc # => "b"
ARGF.getc # => "a"
ARGF.getc # => "r"
ARGF.getc # => "\n"
ARGF.getc # => nil
```

- **SEE** [ARGF.class#getbyte](../../../method/ARGF=2eclass/i/getbyte.md), [ARGF.class#gets](../../../method/ARGF=2eclass/i/gets.md)
