# Object#pretty_print

### def pretty_print(pp)    -> ()

[PP.pp](../../../method/PP/s/pp.md) や [Kernel?.pp](../../../method/Kernel/m/pp.md) がオブジェクトの内容を出力するときに呼ばれるメソッドです。[PP](../../../class/PP.md) オブジェクト pp を引数として呼ばれます。

あるクラスの pp の出力をカスタマイズしたい場合は、このメソッドを再定義します。
そのとき pretty_print メソッドは指定された pp に対して表示したい自身の内容を追加していかなければいけません。いくつかの組み込みクラスについて、
[pp](../../../library/pp.md) ライブラリはあらかじめ pretty_print メソッドを定義しています。

- **param** `pp` -- [PP](../../../class/PP.md) オブジェクトです。

```ruby
class Array
  def pretty_print(q)
    q.group(1, '[', ']') {
      q.seplist(self) {|v|
        q.pp v
      }
    }
  end
end
```

- **SEE** [Object#pretty_print_cycle](../../../method/Object/i/pretty_print_cycle.md), [Object#inspect](../../../method/Object/i/inspect.md), [PrettyPrint#text](../../../method/PrettyPrint/i/text.md), [PrettyPrint#group](../../../method/PrettyPrint/i/group.md), [PrettyPrint#breakable](../../../method/PrettyPrint/i/breakable.md)
