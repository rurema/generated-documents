# ARGF.class#getbyte

### def getbyte   -> Integer | nil
{: since=""}

self から 1 バイト(0..255)を読み込み整数として返します。
既に EOF に達していれば nil を返します。

ARGF はスクリプトに指定した引数([Object::ARGV](../../../method/Object/c/ARGV.md) を参照) をファイル名とみなして、それらのファイルを連結した 1 つの仮想ファイルを表すオブジェクトです。そのため、最初のファイルを最後まで読んだ後は次のファイルの内容を返します。

```console
$ echo "foo" > file1
$ echo "bar" > file2
$ ruby argf.rb file1 file2

ARGF.getbyte # => 102
ARGF.getbyte # => 111
ARGF.getbyte # => 111
ARGF.getbyte # => 10
ARGF.getbyte # => 98
ARGF.getbyte # => 97
ARGF.getbyte # => 114
ARGF.getbyte # => 10
ARGF.getbyte # => nil
```

- **SEE** [ARGF.class#getc](../../../method/ARGF=2eclass/i/getc.md), [ARGF.class#gets](../../../method/ARGF=2eclass/i/gets.md)
