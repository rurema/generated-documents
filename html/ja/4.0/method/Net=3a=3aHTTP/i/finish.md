# Net::HTTP#finish

### def finish -> ()

HTTP セッションを終了します。セッション開始前にこのメソッドが呼ばれた場合は例外 IOError を発生します。

- **raise** `IOError` -- セッション開始前に呼ぶと発生します。
