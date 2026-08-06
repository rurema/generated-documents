# Thread.report_on_exception=

### def Thread.report_on_exception             -> bool
### def Thread.report_on_exception=(newstate)

真の時は、いずれかのスレッドが例外によって終了した時に、その内容を $stderr に報告します。

デフォルトは true です。

```ruby
Thread.new { 1.times { raise } }
```

は $stderr に以下のように出力します:

```text
#<Thread:...> terminated with exception (report_on_exception is true):
Traceback (most recent call last):
2: from -e:1:in 'block in <main>'
1: from -e:1:in 'times'
```

これによってスレッドのエラーを早期に捕捉できるようになります。
いくつかのケースでは、この出力を望まないかもしれません。
出力を抑制するには複数の方法があります:

- 例外が意図したものではない場合、原因を修正して例外が発生しないようにする方法が最善です。
- 例外が意図したものの場合、例外が発生する場所により近い場所で rescue して、
   その例外でスレッドが終了しないようにするのがより良い方法です。
- [Thread#join](../../../method/Thread/i/join.md) や [Thread#value](../../../method/Thread/i/value.md) でそのスレッドの終了を待つことが保証できるなら、
   スレッド開始時に Thread.current.report_on_exception = false でレポートを無効化しても
   安全です。しかし、この場合、例外をハンドルするのが遅れたり、親スレッドがブロックされていて
   終了を待つことができなかったりするかもしれません。

スレッドごとに設定する方法は [Thread#report_on_exception=](../../../method/Thread/i/report_on_exception=3d.md) を参照してください。

- **param** `newstate` -- スレッド実行中に例外発生した場合、その内容を報告するかどうかを true か false で指定します。
