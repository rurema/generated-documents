# IO#wait_writable

### def wait_writable          -> self
### def wait_writable(timeout) -> self | nil

self が書き込み可能になるまでブロックし、書き込み可能になったら self を返します。

timeout を指定した場合は、指定秒数経過するまでブロックし、タイムアウトした場合は nil を返します。

- **param** `timeout` -- タイムアウトまでの秒数を指定します。

- **SEE** [IO#wait_readable](../../../method/IO/i/wait_readable.md)
