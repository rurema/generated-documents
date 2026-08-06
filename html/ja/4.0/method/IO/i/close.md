# IO#close

### def close    -> nil

入出力ポートをクローズします。

以後このポートに対して入出力を行うと例外 [IOError](../../../class/IOError.md) が発生します。ガーベージコレクトの際にはクローズされていない IO ポートはクローズされます。
self がパイプでプロセスにつながっていれば、そのプロセスの終了を待ち合わせます。

既に close されていた場合には単に無視されます。

- **raise** `Errno::EXXX` -- close に失敗した場合に発生します。

```ruby title="例"
IO.write("testfile", "test")
f = File.open("testfile")
p f.read # => "test"
f.close
# f.read # => IOError (すでに close しているので read できない)
```

- **SEE** [IO#closed?](../../../method/IO/i/closed=3f.md), [IO#close_read](../../../method/IO/i/close_read.md), [IO#close_write](../../../method/IO/i/close_write.md)
