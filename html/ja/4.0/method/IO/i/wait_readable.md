# IO#wait_readable

### def wait_readable(timeout = nil) -> self | true | nil

`self` が読み込み可能になるまでブロックし、読み込み可能になったら真値を返します。

一度ブロックしてから読み込み可能になった場合には `self` を返します。
内部のバッファにデータがある場合にはブロックせずに true を返します。
内部のバッファとは Ruby の処理系が保持管理しているバッファのことです。
つまり、読み込み可能である場合には true を返す場合と `self` を返す場合があることに注意してください。
`self` が EOF に達している場合も読み込み可能として扱われます。

`timeout` を指定した場合は、指定秒数経過するまでブロックし、タイムアウトした場合は nil を返します。

- **param** `timeout` -- タイムアウトまでの秒数を指定します。nil を指定すると読み込み可能になるまで待ち続けます。

```ruby title="例"
r, w = IO.pipe

p r.wait_readable(0)           # => nil
w.write("x")
p r.wait_readable(0).equal?(r) # => true
```

- **SEE** [IO#wait](../../../method/IO/i/wait.md), [IO#wait_writable](../../../method/IO/i/wait_writable.md)
