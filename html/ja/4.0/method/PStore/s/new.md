# PStore.new

### def PStore.new(file, thread_safe = false) -> PStore

ファイル名 file に対してデータベースを読み書きします。

データベースを更新するときにバックアップファイルが作成されるため、
file のあるディレクトリは書き込み可能である必要があります。
データベースの更新が成功すると、バックアップファイルは削除されます。バックアップファイル名はファイル名に ".tmp" および ".new" を付けたものです。

- **param** `file` -- データベースファイル名。

- **param** `thread_safe` -- 真を指定すると [Thread::Mutex](../../../class/Thread=3a=3aMutex.md) を用いてスレッドセーフになります。
                   デフォルトは偽です。
