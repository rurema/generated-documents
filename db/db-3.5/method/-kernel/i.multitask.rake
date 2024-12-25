names=multitask
visibility=private
kind=added
source_location=refm/api/src/rake/core_ext:173

--- multitask(args){ ... } -> Rake::MultiTask

事前タスクを並列実行するタスクを定義します。

与えられた事前タスクを実行する順序は不定です。

例:
  multitask :deploy => [:deploy_gem, :deploy_rdoc]

