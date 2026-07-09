names=namespace
visibility=private
kind=added
source_location=/tmp/claude-1000/-home-debian-rurema/3717a77b-67d6-4a40-b15e-a41ca141ab34/scratchpad/frozen.Phg2K5/src/refm/api/src/rake/core_ext

--- namespace(name = nil){ ... } -> Rake::NameSpace

新しい名前空間を作成します。

与えられたブロックを評価する間は、その名前空間を使用します。

例:
   ns = namespace "nested" do
     task :run
   end
   task_run = ns[:run] # find :run in the given namespace.

@see [[m:Rake::TaskManager#in_namespace]]

