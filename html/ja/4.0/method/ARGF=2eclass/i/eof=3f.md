# ARGF.class#eof?

### def eof  -> bool
{: since=""}
### def eof? -> bool
{: since=""}

現在開いているファイルがEOFに達したらtrueを返します。そうでない場合は
falseを返します。

- **raise** `IOError` -- ファイルがopenされていない場合に発生します。

```console
$ echo "eof" | ruby argf.rb

ARGF.eof?                 # => false
3.times { ARGF.readchar }
ARGF.eof?                 # => false
ARGF.readchar             # => "\n"
ARGF.eof?                 # => true
```

- **SEE** [IO#eof](../../../method/IO/i/eof.md), [IO#eof?](../../../method/IO/i/eof=3f.md)
