names=synthesize_file_task
visibility=public
kind=defined
source_location=refm/api/src/rake/Rake__TaskManager:215

--- synthesize_file_task(task_name) -> Rake::FileTask | nil

与えられたタスク名をもとにファイルタスクを合成します。

@param task_name タスク名を指定します。

@return 与えられたタスク名と同名のファイルが存在する場合は、ファイルタスクを作成して返します。
        そうでない場合は nil を返します。

@raise RuntimeError タスクを合成できなかった場合に発生します。

//emlist[][ruby]{
# Rakefile での記載例とする

task default: :test_rake_app

task :test_rake_app do |task|
  task.application.synthesize_file_task("sample_file") # => nil
  IO.write("sample_file", "")
  task.application.synthesize_file_task("sample_file") # => <Rake::FileTask sample_file => []>
end
//}

