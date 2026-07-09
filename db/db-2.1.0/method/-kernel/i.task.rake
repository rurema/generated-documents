names=task
visibility=private
kind=added
source_location=/tmp/claude-1000/-home-debian-rurema/3717a77b-67d6-4a40-b15e-a41ca141ab34/scratchpad/frozen.Phg2K5/src/refm/api/src/rake/core_ext

--- task(*args){ ... } -> Rake::Task

Rake タスクを定義します。

@param args タスク名と依存タスクを指定します。

例:
  task :clobber => [:clean] do
    rm_rf "html"
  end

@see [[m:Rake::Task.define_task]]


