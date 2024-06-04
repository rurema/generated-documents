names=[]
visibility=public
kind=defined
source_location=refm/api/src/rake/Rake__TaskManager:7

--- [](task_name, scopes = nil) -> Rake::Task

与えられたタスク名にマッチするタスクを検索します。

@param task_name タスク名を指定します。

@param scopes スコープを指定します。

//emlist[][ruby]{
# Rakefile での記載例とする

task default: :test_rake_app
task :test_rake_app do
  Rake.application["test_rake_app"] # => <Rake::Task test_rake_app => []>
end
//}

