# ARGF.class#binmode?

### def binmode? -> bool
{: since="1.9.1"}

ARGF の入力ストリームがバイナリモードなら true を返します。
そうでない場合、false を返します。

バイナリモードにするためには [ARGF.class#binmode](../../../method/ARGF=2eclass/i/binmode.md) を使用します。

```ruby
p ARGF.binmode? # => false
ARGF.binmode
p ARGF.binmode? # => true
```

- **SEE** [IO#binmode?](../../../method/IO/i/binmode=3f.md), [ARGF.class#binmode](../../../method/ARGF=2eclass/i/binmode.md)
