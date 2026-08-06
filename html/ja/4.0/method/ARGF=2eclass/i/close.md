# ARGF.class#close

### def close -> self
{: since=""}

現在開いている処理対象のファイルをクローズします。開くファイルが残っている場合は次のファイルをオープンします。
ただし、標準入力はクローズされません。

```console
$ echo "foo" > foo
$ echo "bar" > bar

$ ruby argf.rb foo bar

ARGF.filename  # => "foo"
ARGF.close
ARGF.filename  # => "bar"
ARGF.close
```

- **SEE** [ARGF.class#closed?](../../../method/ARGF=2eclass/i/closed=3f.md)
