names=enhance_with_matching_rule
visibility=public
kind=defined
source_location=/tmp/claude-1000/-home-debian-rurema/3717a77b-67d6-4a40-b15e-a41ca141ab34/scratchpad/frozen.xqkPhh/src/refm/api/src/rake/Rake__TaskManager

--- enhance_with_matching_rule(task_name, level = 0) -> Rake::Task | nil

与えられたタスク名にマッチしたルールが存在する場合は、そのタスクに見つかったルールの
事前タスクとアクションを追加して返します。

@param task_name タスクの名前を指定します。

@param level 現在のルール解決のネストの深さを指定します。

@raise RuntimeError ルールの解決時にオーバーフローした場合に発生します。

