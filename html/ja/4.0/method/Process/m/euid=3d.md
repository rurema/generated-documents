# Process?.euid=

### module_function def euid=(uid)

カレントプロセスの実効ユーザ ID を uid に設定します。

動作の詳細はプラットフォームに依存します。
実効ユーザ ID 以外のユーザ ID も変更されるかも知れません。

- **param** `uid` -- 実効ユーザ ID を整数で指定します。

- **raise** `Errno::EXXX` -- 権限がない場合に発生します。

- **raise** `NotImplementedError` -- メソッドが現在のプラットフォームで実装されていない場合に発生します。

- **SEE** [Process::UID?.eid=](../../../method/Process=3a=3aUID/m/eid=3d.md)
