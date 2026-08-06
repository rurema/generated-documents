# Thread.start

### def Thread.start(*arg) {|*arg| ... }       -> Thread
### def Thread.fork(*arg) {|*arg| ... }        -> Thread

スレッドを生成して、ブロックの評価を開始します。
生成したスレッドを返します。

基本的に [Thread.new](../../../method/Thread/s/new.md) と同じですが、
new メソッドと違い initialize メソッドを呼びません。

- **param** `arg` -- 引数 arg はそのままブロックに渡されます。スレッドの開始と同時にその
           スレッド固有のローカル変数に値を渡すために使用します。

- **raise** `ThreadError` -- 現在のスレッドが属する [ThreadGroup](../../../class/ThreadGroup.md) が freeze されている場合に発生します。またブロックを与えられずに呼ばれた場合にも発生します。

注意:

例えば、以下のコードは間違いです。スレッドの実行が開始される前に変数 i が書き変わる可能性があるからです。

```ruby
for i in 1..5
   Thread.start { p i }
end
```

上の例は以下のように書き直すべきです。

```ruby
for i in 1..5
   Thread.start(i) {|t| p t }
end
```
