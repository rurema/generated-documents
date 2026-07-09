names=lookup
visibility=public
kind=defined
source_location=/tmp/claude-1000/-home-debian-rurema/3717a77b-67d6-4a40-b15e-a41ca141ab34/scratchpad/frozen.wG7wMH/src/refm/api/src/rake/Rake__TaskManager

--- lookup(task_name, initial_scope = nil) -> Rake::Task | nil

与えられたタスク名にマッチするタスクを検索します。

このメソッドは、ファイルタスクやルールを合成せずにタスクを探します。
特別なスコープ ('^' など) が存在します。スコープが省略された場合は
現在のスコープを使用します。

@param task_name タスク名を指定します。

@param initial_scope 検索するスコープを指定します。

