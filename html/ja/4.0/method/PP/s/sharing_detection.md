# PP.sharing_detection

### def PP.sharing_detection                 -> bool
### def PP.sharing_detection=(boolean)

共有検出フラグを表すアクセサです。
デフォルトは false です。true である場合、
[PP.pp](../../../method/PP/s/pp.md) は一度出力したオブジェクトを再び出力する時
[Object#pretty_print_cycle](../../../method/Object/i/pretty_print_cycle.md) を使います。

- **param** `boolean` -- 共有検出フラグを true か false で指定します。

```ruby
b = [1, 2, 3]
a = [b, b]

pp a                        #=> [[1, 2, 3], [1, 2, 3]]

PP.sharing_detection = true
pp a                        #=> [[1, 2, 3], [...]]
```
