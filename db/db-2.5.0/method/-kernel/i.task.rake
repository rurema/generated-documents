names=task
visibility=private
kind=added
source_location=refm/api/src/rake/core_ext:124

--- task(*args){ ... } -> Rake::Task

Rake タスクを定義します。

@param args タスク名と依存タスクを指定します。

例:
  task :clobber => [:clean] do
    rm_rf "html"
  end

@see [[m:Rake::Task.define_task]]


