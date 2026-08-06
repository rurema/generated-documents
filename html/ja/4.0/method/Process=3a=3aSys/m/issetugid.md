# Process::Sys?.issetugid

### module_function def issetugid    -> bool

システムコールの issetugid() を呼びます。

プロセスが setuid もしくは setgid ビットを使って起動されている場合に真を返します。

- **raise** `NotImplementedError` -- システムコールが現在のプラットフォームで提供されていない場合に発生します。
