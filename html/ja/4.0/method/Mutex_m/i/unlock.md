# Mutex_m#unlock

### def mu_unlock -> ()
### def unlock -> ()

ロックを解放します。ロック待ちになっていたスレッドの実行は再開されます。

- **raise** `ThreadError` -- ロックされていない場合に unlock を呼ぶと発生します
