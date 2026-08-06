# Kernel?.loop

### module_function def loop         -> Enumerator
### module_function def loop { ... } -> object | nil

(中断されない限り)永遠にブロックの評価を繰り返します。
ブロックが指定されなければ、代わりに [Enumerator](../../../class/Enumerator.md) を返します。

```ruby title="例"
loop do
  print "Input: "
  line = gets
  break if !line or line =~ /^qQ/
  # ...
end
```

与えられたブロック内で [StopIteration](../../../class/StopIteration.md) を [Kernel?.raise](../../../method/Kernel/m/raise.md) するとループを終了して [Enumerator](../../../class/Enumerator.md) が最後に返した値を返します。
ループを終了させる場合、通常は break を使用してください。

```ruby title="例"
enum = Enumerator.new { |y|
  y << "one"
  y << "two"
  :ok
}

result = loop {
  puts enum.next
} # => :ok
```

- **return** -- break の引数など、ループ脱出時の値を返します。
