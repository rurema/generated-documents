# ARGF.class#pos=

### def pos=(n)
{: since=""}

ARGFが開いているファイルのファイルポインタを指定位置に移動します。

- **param** `n` -- 先頭からのオフセットをバイト単位の整数で指定します。

```ruby
ARGF.pos = 17
p ARGF.gets # => "This is line two\n"
```

- **SEE** [IO#pos=](../../../method/IO/i/pos=3d.md), [ARGF.class#pos](../../../method/ARGF=2eclass/i/pos.md)
