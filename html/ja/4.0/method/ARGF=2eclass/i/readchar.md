# ARGF.class#readchar

### def readchar -> String
{: since=""}

ARGFから 1 文字読み込んで、その文字に対応する String を返します。EOF に到達した時には EOFErrorを発生します。

- **raise** `EOFError` -- EOFに達した時発生する

```console
$ echo "foo" > file
$ ruby argf.rb file

ARGF.readchar  # => "f"
ARGF.readchar  # => "o"
ARGF.readchar  # => "o"
ARGF.readchar  # => "\n"
ARGF.readchar  # => end of file reached (EOFError)
```

- **SEE** [ARGF.class#getc](../../../method/ARGF=2eclass/i/getc.md)
