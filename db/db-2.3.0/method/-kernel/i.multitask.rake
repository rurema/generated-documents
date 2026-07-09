names=multitask
visibility=private
kind=added
source_location=/tmp/claude-1000/-home-debian-rurema/3717a77b-67d6-4a40-b15e-a41ca141ab34/scratchpad/frozen.xqkPhh/src/refm/api/src/rake/core_ext

--- multitask(args){ ... } -> Rake::MultiTask

事前タスクを並列実行するタスクを定義します。

与えられた事前タスクを実行する順序は不定です。

例:
  multitask :deploy => [:deploy_gem, :deploy_rdoc]

