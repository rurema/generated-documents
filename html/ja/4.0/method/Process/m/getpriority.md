# Process?.getpriority

### module_function def getpriority(which, who)    -> Integer

which に従いプロセス、プロセスグループ、ユーザのいずれかの現在のプライオリティを整数で返します。

- **param** `which` -- プライオリティの種類を次の定数で指定します。 [Process::PRIO_PROCESS](../../../method/Process/c/PRIO_PROCESS.md),
             [Process::PRIO_PGRP](../../../method/Process/c/PRIO_PGRP.md), [Process::PRIO_USER](../../../method/Process/c/PRIO_USER.md)。

- **param** `who` -- which の値にしたがってプロセス ID、プロセスグループ ID、ユーザ ID のいずれかを整数で指定します。

- **raise** `Errno::EXXX` -- プライオリティの取得に失敗した場合に発生します。

- **raise** `NotImplementedError` -- メソッドが現在のプラットフォームで実装されていない場合に発生します。

- **SEE** [man:getpriority(2)]
