# Process::Sys?.setuid

### module_function def setuid(id)    -> nil

システムコールの [man:setuid(2)] を呼びます。

- **raise** `NotImplementedError` -- システムコールが現在のプラットフォームで提供されていない場合に発生します。

- **raise** `Errno::EXXX` -- システムコールに失敗した場合に発生します。
