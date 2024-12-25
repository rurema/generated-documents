names=intern
visibility=public
kind=defined
source_location=refm/api/src/rake/Rake__TaskManager:122

--- intern(task_class, task_name) -> Rake::Task

タスクを検索します。

タスクが見つかれば見つかったタスクを返します。
見つからなければ、与えられた型のタスクを作成して返します。

@param task_class タスクのクラスを指定します。

@param task_name タスクの名前を指定します。

//emlist[][ruby]{
# Rakefile での記載例とする

task default: :test_rake_app

task :test_rake_app do |task|
  task.application.intern(Rake::Task, "test_rake_app") # => <Rake::Task test_rake_app => []>
  task.application.intern(Rake::Task, "sample_task")   # => <Rake::Task sample_task => []>
end
//}

