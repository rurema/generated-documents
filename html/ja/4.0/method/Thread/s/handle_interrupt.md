# Thread.handle_interrupt

### def Thread.handle_interrupt(hash) { ... } -> object

スレッドの割り込みのタイミングを引数で指定した内容に変更してブロックを実行します。

「割り込み」とは、非同期イベントや [Thread#raise](../../../method/Thread/i/raise.md) や
[Thread#kill](../../../method/Thread/i/kill.md)、[Signal?.trap](../../../method/Signal/m/trap.md)(未サポート)、メインスレッドの終了
(メインスレッドが終了すると、他のスレッドも終了されます)を意味します。

- **param** `hash` -- 例外クラスがキー、割り込みのタイミングを指定する
            [Symbol](../../../class/Symbol.md) が値の [Hash](../../../class/Hash.md) を指定します。
            値の内容は以下のいずれかです。

- **`:immediate`**:

  すぐに割り込みます。

- **`:on_blocking`**:

  ブロッキング処理(後述)の間は割り込みが発生します。

- **`:never`**:

  まったく割り込みません。

「ブロッキング処理」とは、読み込み処理や書き込み処理のような呼び出し元のスレッドをブロックするような処理を意味します。CRuby の実装では、GVL
を解放して実行する処理は全てブロッキング処理に含まれます。

また、マスクされた非同期割り込みは再度有効にされるまで延期されます。本メソッドは [man:sigprocmask(3)] に似ています。

- **return** -- ブロックの評価結果を返します。

- **raise** `ArgumentError` -- ブロックを指定しなかった場合に発生します。

### 注意

非同期割り込みの利用は難しいため、スレッド間での通信を実現する場合はまずはキューのような他の方法を検討してください。それでも非同期割り込みを利用する場合は本メソッドをよく理解してから利用してください。

### 使い方

例:[Thread#raise](../../../method/Thread/i/raise.md) 発生のタイミングを制御する例

```ruby
th = Thread.new do
  Thread.handle_interrupt(RuntimeError => :never) {
    begin
      # 安全にリソースの割り当てが可能
      Thread.handle_interrupt(RuntimeError => :immediate) {
        # ...
      }
    ensure
      # 安全にリソースの解放が可能
    end
  }
end
Thread.pass
# ...
th.raise "stop"
```

[RuntimeError](../../../class/RuntimeError.md) を無視(延期)している間はリソースの割り当てや ensure
節でリソースの解放を安全に行う事ができます。

#### Timeout::Error 対策

例:[Timeout::Error](../../../class/Timeout=3a=3aError.md) 発生のタイミングを制御する例

```ruby
require 'timeout'
Thread.handle_interrupt(Timeout::Error => :never) {
  Timeout.timeout(10){
    # Timeout::Error => :never の指定により、ここでは Timeout::Error が発生しない。
    Thread.handle_interrupt(Timeout::Error => :on_blocking) {
      # :on_blocking な処理は Timeout::Error が発生し得る。
    }
    # Timeout::Error => :never の指定により、ここでは Timeout::Error が発生しない。
  }
}
```

この例を ensure 節での [Timeout::Error](../../../class/Timeout=3a=3aError.md) 発生に応用する事でリソースリークに備える事ができます。[Timeout?.timeout](../../../method/Timeout/m/timeout.md) はスレッドを使って実装されているため、Thread.handle_interrupt による制御が有効です。

#### Stack control settings

It's possible to stack multiple levels of ::handle_interrupt blocks in order
to control more than one ExceptionClass and TimingSymbol at a time.

```ruby
Thread.handle_interrupt(FooError => :never) {
  Thread.handle_interrupt(BarError => :never) {
     # FooError and BarError are prohibited.
  }
}
```

#### 例外クラスの継承関係

本メソッドでは引数 hash のキーに指定した例外クラスの全てのサブクラスが処理の対象になります。

```ruby title="例"
Thread.handle_interrupt(Exception => :never) {
  # Exception を継承する全ての例外クラスの例外の発生を延期。
}
```

- **SEE** [Thread.pending_interrupt?](../../../method/Thread/s/pending_interrupt=3f.md), [Thread#pending_interrupt?](../../../method/Thread/i/pending_interrupt=3f.md)
