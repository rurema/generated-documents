# class Thread < Object

スレッドを表すクラスです。スレッドとはメモリ空間を共有して同時に実行される制御の流れです。
Thread を使うことで並行プログラミングが可能になります。

### 実装

ネイティブスレッドを用いて実装されていますが、現在の実装では Ruby VM は Giant VM lock (GVL) を有しており、同時に実行されるネイティブスレッドは常にひとつです。
ただし、IO 関連のブロックする可能性があるシステムコールを行う場合には
GVL を解放します。その場合にはスレッドは同時に実行され得ます。
また拡張ライブラリから GVL を操作できるので、複数のスレッドを同時に実行するような拡張ライブラリは作成可能です。

### スケジューリング

Ruby のスレッドスケジューリングはネイティブスレッドのそれを利用しています。
よって詳細はプラットフォームに依存します。

### メインスレッド

プログラムの開始と同時に生成されるスレッドを「メインスレッド」と呼びます。なんらかの理由でメインスレッドが終了する時には、他の全てのスレッドもプログラム全体も終了します。ユーザからの割込みによって発生した例外はメインスレッドに送られます。

### スレッドの終了

スレッドの起動時に指定したブロックの実行が終了するとスレッドの実行も終了します。ブロックの終了は正常な終了も例外などによる異常終了も含みます。

### 例外発生時のスレッドの振る舞い {#exception}

あるスレッドで例外が発生し、そのスレッド内で rescue で捕捉されなかった場合、通常はそのスレッドだけがなにも警告なしに終了されます。ただしその例外で終了するスレッドを [Thread#join](../method/Thread/i/join.md) で待っている他のスレッドがある場合、その待っているスレッドに対して、同じ例外が再度発生します。

```ruby
begin
  t = Thread.new do
    Thread.pass    # メインスレッドが確実にjoinするように
    raise "unhandled exception"
  end
  t.join
rescue
  p $!  # => "unhandled exception"
end
```

また、以下の 3 つの方法により、いずれかのスレッドが例外によって終了した時に、インタプリタ全体を中断させるように指定できます。

  - 組み込み変数 [m:$DEBUG] を真に設定する(デバッグモード)
    ruby インタプリタを -d オプション 付きで起動した場合も同様。
    (オプションの詳細に関しては[spec/rubycmd](../doc/spec=2frubycmd.md) を参照)
  - [Thread.abort_on_exception](../method/Thread/s/abort_on_exception.md) でフラグを設定する。
  - [Thread#abort_on_exception](../method/Thread/i/abort_on_exception.md) で指定
    したスレッドのフラグを設定する。

上記3つのいずれかが設定されていた場合、インタプリタ全体が中断されます。

### スレッド終了時の ensure 節の実行

スレッド終了時には ensure 節が実行されます。
これはスレッドが正常に終了する時はもちろんですが、他のスレッドから [Thread#kill](../method/Thread/i/kill.md)
などによって終了させられた時も同様に実行されます。

メインスレッドの終了時の詳細に関しては [spec/terminate](../doc/spec=2fterminate.md) を参照して下さい。

### スレッドの状態

個々のスレッドは、以下の実行状態を持ちます。これらの状態は
[Object#inspect](../method/Object/i/inspect.md) や
[Thread#status](../method/Thread/i/status.md) によって見ることができます。

```ruby
p Thread.new {sleep 1} # => #<Thread:0xa039de0 sleep>
```

- **run (実行or実行可能状態)**:
  生成されたばかりのスレッドや [Thread#run](../method/Thread/i/run.md) や
  [Thread#wakeup](../method/Thread/i/wakeup.md) で起こされたスレッドはこの状態です。
  [Thread#join](../method/Thread/i/join.md) でスレッドの終了を待っているスレッドもスレッドの終了によりこの状態になります。
 
  この状態のスレッドは「生きて」います。

- **sleep (停止状態)**:
  [Thread.stop](../method/Thread/s/stop.md) や [Thread#join](../method/Thread/i/join.md) により停止されたスレッドはこの状態になります。
 
  この状態のスレッドは「生きて」います。

- **aborting (終了処理中)**:
  [Thread#kill](../method/Thread/i/kill.md) 等で終了されるスレッドは一時的にこの状態になります。この状態から停止状態(sleep)になることもあります。
 
  この状態のスレッドはまだ「生きて」います。

- **dead (終了状態)**:
  [Thread#kill](../method/Thread/i/kill.md) 等で終了したスレッドはこの状態になります。この状態のスレッドはどこからも参照されていなければ GC によりメモリ上からなくなります。
 
  この状態のスレッドは「死んで」います。

### デッドロックの検出
@todo

## Class Methods

- [DEBUG](../method/Thread/s/DEBUG.md)
- [DEBUG=](../method/Thread/s/DEBUG=3d.md)
- [abort_on_exception](../method/Thread/s/abort_on_exception.md)
- [abort_on_exception=](../method/Thread/s/abort_on_exception=3d.md)
- [current](../method/Thread/s/current.md)
- [each_caller_location](../method/Thread/s/each_caller_location.md)
- [exit](../method/Thread/s/exit.md)
- [fork](../method/Thread/s/fork.md)
- [start](../method/Thread/s/start.md)
- [handle_interrupt](../method/Thread/s/handle_interrupt.md)
- [ignore_deadlock](../method/Thread/s/ignore_deadlock.md)
- [ignore_deadlock=](../method/Thread/s/ignore_deadlock=3d.md)
- [kill](../method/Thread/s/kill.md)
- [list](../method/Thread/s/list.md)
- [main](../method/Thread/s/main.md)
- [new](../method/Thread/s/new.md)
- [pass](../method/Thread/s/pass.md)
- [pending_interrupt?](../method/Thread/s/pending_interrupt=3f.md)
- [report_on_exception](../method/Thread/s/report_on_exception.md)
- [report_on_exception=](../method/Thread/s/report_on_exception=3d.md)
- [stop](../method/Thread/s/stop.md)

## Instance Methods

- [\[\]](../method/Thread/i/=5b=5d.md)
- [\[\]=](../method/Thread/i/=5b=5d=3d.md)
- [abort_on_exception](../method/Thread/i/abort_on_exception.md)
- [abort_on_exception=](../method/Thread/i/abort_on_exception=3d.md)
- [add_trace_func](../method/Thread/i/add_trace_func.md)
- [alive?](../method/Thread/i/alive=3f.md)
- [backtrace](../method/Thread/i/backtrace.md)
- [backtrace_locations](../method/Thread/i/backtrace_locations.md)
- [exit](../method/Thread/i/exit.md)
- [kill](../method/Thread/i/kill.md)
- [terminate](../method/Thread/i/terminate.md)
- [fetch](../method/Thread/i/fetch.md)
- [group](../method/Thread/i/group.md)
- [inspect](../method/Thread/i/inspect.md)
- [to_s](../method/Thread/i/to_s.md)
- [join](../method/Thread/i/join.md)
- [key?](../method/Thread/i/key=3f.md)
- [keys](../method/Thread/i/keys.md)
- [name](../method/Thread/i/name.md)
- [name=](../method/Thread/i/name=3d.md)
- [native_thread_id](../method/Thread/i/native_thread_id.md)
- [pending_interrupt?](../method/Thread/i/pending_interrupt=3f.md)
- [priority](../method/Thread/i/priority.md)
- [priority=](../method/Thread/i/priority=3d.md)
- [raise](../method/Thread/i/raise.md)
- [report_on_exception](../method/Thread/i/report_on_exception.md)
- [report_on_exception=](../method/Thread/i/report_on_exception=3d.md)
- [run](../method/Thread/i/run.md)
- [set_trace_func](../method/Thread/i/set_trace_func.md)
- [status](../method/Thread/i/status.md)
- [stop?](../method/Thread/i/stop=3f.md)
- [thread_variable?](../method/Thread/i/thread_variable=3f.md)
- [thread_variable_get](../method/Thread/i/thread_variable_get.md)
- [thread_variable_set](../method/Thread/i/thread_variable_set.md)
- [thread_variables](../method/Thread/i/thread_variables.md)
- [value](../method/Thread/i/value.md)
- [wakeup](../method/Thread/i/wakeup.md)
