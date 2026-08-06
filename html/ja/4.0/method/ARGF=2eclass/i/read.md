# ARGF.class#read

### def read(length = nil, str = nil) -> String | nil
{: since=""}

ARGVに指定されたファイルを先頭のファイルからlengthバイト読み込み、その文字列をstrに出力します。読み込んだ文字列を返します。

- **param** `length` -- 読み込むバイト数を指定します。nilの場合はARGVのすべてのファ
              イルを読み込みます。

- **param** `str` -- 出力先の文字列。内容は上書きされます。

```console
$ echo "small" > small.txt
$ echo "large" > large.txt
$ ruby glark.rb small.txt large.txt

ARGF.read      # => "small\nlarge"
ARGF.read(200) # => "small\nlarge"
ARGF.read(2)   # => "sm"
ARGF.read(0)   # => ""
```

- **SEE** [IO#read](../../../method/IO/i/read.md)
