# ARGF.class#file

### def file -> IO
{: since=""}

現在開いている処理対象の [File](../../../class/File.md) オブジェクト(または [IO](../../../class/IO.md) オブジェクト)を返します。

```console
$ echo "foo" > foo
$ echo "bar" > bar

$ ruby argf.rb foo bar

ARGF.file      # => #<File:foo>
ARGF.read(5)   # => "foo\nb"
ARGF.file      # => #<File:bar>
```

ARGFが現在開いている処理対象が標準入力の場合、$stdin を返します。
