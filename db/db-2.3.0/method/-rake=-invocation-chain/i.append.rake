names=append
visibility=public
kind=defined
source_location=/tmp/claude-1000/-home-debian-rurema/3717a77b-67d6-4a40-b15e-a41ca141ab34/scratchpad/frozen.xqkPhh/src/refm/api/src/rake/Rake__InvocationChain

--- append(task_name) -> Rake::InvocationChain

与えられたタスク名を追加して新しい [[c:Rake::InvocationChain]] を返します。

@param task_name 追加するタスク名を指定します。

@raise RuntimeError 循環したタスクの呼び出しを検出した場合に発生します。

