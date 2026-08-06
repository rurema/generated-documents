# ARGF.class#filename

### def filename -> String
{: since=""}
### def path -> String
{: since=""}

現在開いている処理対象のファイル名を返します。

標準入力に対しては - を返します。
組み込み変数 [m:$FILENAME] と同じです。

```console
$ echo "foo" > foo
$ echo "bar" > bar
$ echo "glark" > glark

$ ruby argf.rb foo bar glark

ARGF.filename # => "foo"
ARGF.read(5)  # => "foo\nb"
ARGF.filename # => "bar"
ARGF.skip
ARGF.filename # => "glark"
```
