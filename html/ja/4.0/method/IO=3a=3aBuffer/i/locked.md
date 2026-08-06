# IO::Buffer#locked

### def locked { ... } -> object

ブロックを実行する間、バッファをロックします。ブロックの値を返します。

ロックされている間、そのバッファに対して [IO::Buffer#resize](../../../method/IO=3a=3aBuffer/i/resize.md) や
[IO::Buffer#free](../../../method/IO=3a=3aBuffer/i/free.md)、さらに [IO::Buffer#locked](../../../method/IO=3a=3aBuffer/i/locked.md) を呼ぶと
[IO::Buffer::LockedError](../../../class/IO=3a=3aBuffer=3a=3aLockedError.md) が発生します。
バッファへの読み書き自体はロック中も行えます。

システムコールでバッファを使っている間に、そのバッファが移動したり解放されたりしないことを保証するための仕組みです。
スレッド安全ではないため、複数のスレッドでバッファを共有する場合は別に同期の手段が必要です。

ブロックの実行中に例外が発生した場合、4.0.6 以降ではロックが解除されます。
4.0.5 以前では解除されずに残ります。

- **raise** `LocalJumpError` -- ブロックを渡さなかった場合に発生します。

- **raise** `IO::Buffer::LockedError` -- すでにロックされているバッファに対して
             呼び出した場合に発生します。

```ruby
buf = IO::Buffer.new(4)

p buf.locked?                # => false
p buf.locked { buf.locked? } # => true
p buf.locked?                # => false

# ブロックの値がそのまま返る
p buf.locked { "done" }      # => "done"
```

```ruby title="例: ロック中は大きさの変更や解放ができない"
buf = IO::Buffer.new(4)
buf.locked { buf.resize(8) } # ~> IO::Buffer::LockedError
```

- **SEE** [IO::Buffer#locked?](../../../method/IO=3a=3aBuffer/i/locked=3f.md), [IO::Buffer::LOCKED](../../../method/IO=3a=3aBuffer/c/LOCKED.md)
