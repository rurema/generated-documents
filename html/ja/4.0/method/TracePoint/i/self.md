# TracePoint#self

### def self -> object

イベントを発生させたオブジェクトを返します。

以下のようにする事で同じ値を取得できます。

なお、self メソッドは binding が nil になる :c_call および :c_return イベントに対しても正しく動作します。

```ruby title="例"
trace.binding.eval('self')
```

- **SEE** [TracePoint#binding](../../../method/TracePoint/i/binding.md)
