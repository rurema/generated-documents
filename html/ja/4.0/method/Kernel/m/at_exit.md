# Kernel?.at_exit

### module_function def at_exit{ ... } -> Proc

与えられたブロックをインタプリタ終了時に実行します。

at_exitがメソッドである点を除けば、END ブロックによる終了処理の登録と同等です。登録した処理を取り消すことはできません。
[spec/terminate](../../../doc/spec=2fterminate.md)も参照してください。

- **return** -- 登録した処理を [Proc](../../../class/Proc.md) オブジェクトで返します。

```ruby title="例"
3.times do |i|
  at_exit{puts "at_exit#{i}"}
end
END{puts "END"}
at_exit{puts "at_exit"}
puts "main_end"

# => main_end
#   at_exit
#   END
#   at_exit2
#   at_exit1
#   at_exit0
```

- **SEE** [spec/control#END](../../../doc/spec=2fcontrol.md#END),[Kernel?.exit!](../../../method/Kernel/m/exit=21.md),[Kernel?.fork](../../../method/Kernel/m/fork.md)
