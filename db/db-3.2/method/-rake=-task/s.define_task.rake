names=define_task
visibility=public
kind=defined
source_location=manual/api/rake/Rake__Task.md
since_by_name=define_task=1.9.3
until_by_name=
rbs_sig=(uninitialized)

### def Rake::Task.define_task(*args){ ... } -> Rake::Task

与えられたパラメータと省略可能なブロックを用いてタスクを定義します。

同名のタスクが存在する場合は、事前タスクとアクションを既に存在するタスクに追加します。

- **param** `args` -- パラメータを指定します。

