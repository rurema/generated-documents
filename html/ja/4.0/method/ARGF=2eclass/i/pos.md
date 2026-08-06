# ARGF.class#pos

### def pos  -> Integer
{: since=""}
### def tell -> Integer
{: since=""}

ARGFが現在開いているファイルのファイルポインタの現在の位置をバイト単位の整数で返します。

```ruby
p ARGF.pos  # => 0
p ARGF.gets # => "This is line one\n"
p ARGF.pos  # => 17
```

- **SEE** [IO#pos](../../../method/IO/i/pos.md), [IO#tell](../../../method/IO/i/tell.md), [ARGF.class#pos=](../../../method/ARGF=2eclass/i/pos=3d.md)
