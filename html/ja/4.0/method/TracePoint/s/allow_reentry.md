# TracePoint.allow_reentry

### def TracePoint.allow_reentry { ... } -> object

ブロックの中に限って、TracePoint の再入を許可します。

通常、ある TracePoint のコールバックを実行している間は、他に登録されたコールバックは呼ばれません。再入によって混乱が生じるのを避けるためです。
このメソッドを使うと、ブロックの中でだけ他のコールバックが呼ばれるようになります。

デバッガのように、自身がコールバックの中にいることで他のライブラリのフックを妨げてはいけない場合に使います。ただしコールバックが際限なく呼ばれることがあるため、使用には注意が必要です。特に、あるコールバックの中でそれ自身を呼び出すイベントを発生させると無限に再帰します。

- **return** -- ブロックの評価結果を返します。

- **raise** `RuntimeError` -- TracePoint のコールバックの外で呼び出した場合に発生します。すでに再入が許可されている場合も同様です。

```ruby
def helper
end

inner = TracePoint.new(:call) do |tp|
  next if tp.method_id != :helper
  puts "  inner ハンドラが呼ばれた"
end
inner.enable

outer = TracePoint.new(:end) do |tp|
  puts "再入を許可しない場合:"
  helper
  puts "再入を許可した場合:"
  TracePoint.allow_reentry { helper }
end
outer.enable

class Foo
end

outer.disable
inner.disable

# => 再入を許可しない場合:
#    再入を許可した場合:
#      inner ハンドラが呼ばれた
```

- **SEE** [TracePoint.new](../../../method/TracePoint/s/new.md)
