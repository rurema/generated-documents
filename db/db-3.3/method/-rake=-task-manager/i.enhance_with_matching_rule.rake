names=enhance_with_matching_rule
visibility=public
kind=defined
source_location=manual/api/rake/Rake__TaskManager.md
since_by_name=enhance_with_matching_rule=1.9.3
until_by_name=
rbs_sig=(uninitialized)

### def enhance_with_matching_rule(task_name, level = 0) -> Rake::Task | nil

与えられたタスク名にマッチしたルールが存在する場合は、そのタスクに見つかったルールの事前タスクとアクションを追加して返します。

- **param** `task_name` -- タスクの名前を指定します。

- **param** `level` -- 現在のルール解決のネストの深さを指定します。

- **raise** `RuntimeError` -- ルールの解決時にオーバーフローした場合に発生します。

