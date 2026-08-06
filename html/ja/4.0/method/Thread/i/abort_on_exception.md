# Thread#abort_on_exception

### def abort_on_exception               -> bool
### def abort_on_exception=(newstate)

真の場合、そのスレッドが例外によって終了した時に、その例外をメインスレッドで再度発生させます。メインスレッドがその例外を捕捉しない限り、結果としてインタプリタ全体が終了します。false の場合、あるスレッドで起こった例外は、
[Thread#join](../../../method/Thread/i/join.md) などで検出されない限りそのスレッドだけをなにも警告を出さずに終了させます。

デフォルトは偽です。[Thread#exception](../../../class/Thread.md#exception)を参照してください。

- **param** `newstate` -- 自身の実行中に例外が発生した場合、その例外をメインスレッドで再度発生させるかどうかを true か false で指定します。

```ruby title="例"
thread = Thread.new { sleep 1 }
p thread.abort_on_exception # => false
thread.abort_on_exception = true
p thread.abort_on_exception # => true
```
