# ARGF.class#skip

### def skip -> self
{: since=""}

現在開いている処理対象のファイルをクローズします。
次回の読み込みは次の引数が処理対象になります。
self を返します。

```console
$ echo "foo" > foo
$ echo "bar" > bar

$ ruby argf.rb foo bar
ARGF.filename  # => "foo"
ARGF.skip
ARGF.filename  # => "bar"
```
