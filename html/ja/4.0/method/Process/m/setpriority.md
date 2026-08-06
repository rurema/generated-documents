# Process?.setpriority

### module_function def setpriority(which, who, prio)    -> 0

プロセス、プロセスグループ、ユーザのいずれかの現在のプライオリティを設定します。プライオリティの設定に成功した場合は 0 を返します。

- **param** `which` -- プライオリティを設定する対象の種類を以下の定数のいずれかで指定します。

- [Process::PRIO_PROCESS](../../../method/Process/c/PRIO_PROCESS.md)
- [Process::PRIO_PGRP](../../../method/Process/c/PRIO_PGRP.md)
- [Process::PRIO_USER](../../../method/Process/c/PRIO_USER.md) 

- **param** `who` -- which の値にしたがってプロセス ID、プロセスグループ ID、ユーザ ID のいずれかを整数で指定します。

- **param** `prio` -- プライオリティを -20 から 20 までの整数で設定します。小さな値はプライオリティが高いことを意味し、大きな値はプライオリティが低いことを意味します。

- **raise** `Errno::EXXX` -- プライオリティの設定に失敗した場合に発生します。

- **raise** `NotImplementedError` -- メソッドが現在のプラットフォームで実装されていない場合に発生します。

以下の例は呼び出したプロセス自身のプライオリティを 10 に下げます。
すでに 10 よりもプライオリティが低く、
Errno::EACCES となった場合には無視して実行を続けます。

```ruby
begin
  Process.setpriority(Process::PRIO_PROCESS, 0, 10)
rescue Errno::EACCES
end
```

- **SEE** [man:setpriority(2)]
