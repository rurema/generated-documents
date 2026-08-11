# TracePoint.new

### def TracePoint.new(*events) {|obj| ... } -> TracePoint

新しい [TracePoint](../../../class/TracePoint.md) オブジェクトを作成して返します。トレースを有効にするには [TracePoint#enable](../../../method/TracePoint/i/enable.md) を実行してください。

```ruby title="例:irb で実行した場合"
trace = TracePoint.new(:call) do |tp|
    p [tp.lineno, tp.defined_class, tp.method_id, tp.event]
end
# => #<TracePoint:0x007f17372cdb20>

p trace.enable
# => false

puts "Hello, TracePoint!"
# ...
# [69, IRB::Notifier::AbstractNotifier, :printf, :call]
# ...
```

トレースを無効にするには [TracePoint#disable](../../../method/TracePoint/i/disable.md) を実行してください。

```ruby
trace.disable
```

- **param** `events` -- トレースするイベントを [String](../../../class/String.md) か [Symbol](../../../class/Symbol.md) で任意の数指定します。

- **`:line`**:

  式の評価。

- **`:class`**:

  クラス定義、特異クラス定義、モジュール定義への突入。

- **`:end`**:

   クラス定義、特異クラス定義、モジュール定義の終了。

- **`:call`**:

  Ruby で記述されたメソッドの呼び出し。

- **`:return`**:

  Ruby で記述されたメソッド呼び出しからのリターン。

- **`:c_call`**:

  C で記述されたメソッドの呼び出し。

- **`:c_return`**:

  C で記述されたメソッド呼び出しからのリターン。

- **`:raise`**:

  例外の発生。

- **`:b_call`**:

  ブロックの開始。

- **`:b_return`**:

  ブロックの終了。

- **`:thread_begin`**:

  スレッドの開始。

- **`:thread_end`**:

  スレッドの終了。

- **`:fiber_switch`**:

  ファイバーの切り替え。

- **`:script_compiled`**:

  スクリプトのコンパイル

指定イベントに関連しない情報を取得するメソッドを実行した場合には
[RuntimeError](../../../class/RuntimeError.md) が発生します。

```ruby title="例"
TracePoint.trace(:line) do |tp|
    p tp.raised_exception
end # ~> RuntimeError: not supported by this event
```

イベントフックの外側で、発生したイベントに関連する情報を取得するメソッドを実行した場合には [RuntimeError](../../../class/RuntimeError.md) が発生します。

```ruby title="例"
TracePoint.trace(:line) do |tp|
  $tp = tp
end
$tp.lineno # => access from outside (RuntimeError)
```

他のスレッドから参照する事も禁じられています。

- **raise** `ArgumentError` -- ブロックを指定しなかった場合に発生します。
