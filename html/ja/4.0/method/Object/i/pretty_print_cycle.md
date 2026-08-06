# Object#pretty_print_cycle

### def pretty_print_cycle(pp)    -> ()

プリティプリント時にオブジェクトの循環参照が検出された場合、
[Object#pretty_print](../../../method/Object/i/pretty_print.md) の代わりに呼ばれるメソッドです。

あるクラスの pp の出力をカスタマイズしたい場合は、このメソッドも再定義する必要があります。

- **param** `pp` -- [PP](../../../class/PP.md) オブジェクトです。

```ruby
class Array
  def pretty_print_cycle(q)
    q.text(empty? ? '[]' : '[...]')
  end
end
```

- **SEE** [Object#pretty_print](../../../method/Object/i/pretty_print.md)
