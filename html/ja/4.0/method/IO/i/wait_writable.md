# IO#wait_writable

### def wait_writable(timeout = nil) -> self | nil

`self` が書き込み可能になるまでブロックし、書き込み可能になったら `self` を返します。

`timeout` を指定した場合は、指定秒数経過するまでブロックし、タイムアウトした場合は nil を返します。

- **param** `timeout` -- タイムアウトまでの秒数を指定します。nil を指定すると書き込み可能になるまで待ち続けます。

```ruby title="例"
r, w = IO.pipe

p w.wait_writable(0).equal?(w) # => true
```

- **SEE** [IO#wait](../../../method/IO/i/wait.md), [IO#wait_readable](../../../method/IO/i/wait_readable.md)
