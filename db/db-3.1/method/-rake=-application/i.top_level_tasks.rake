names=top_level_tasks
visibility=public
kind=defined
source_location=refm/api/src/rake/Rake__Application:274

--- top_level_tasks -> Array

コマンドラインで指定されたタスクのリストを返します。

//emlist[][ruby]{
# Rakefile での記載例とする

task default: :test_rake_app
task :test_rake_app do
  Rake.application.top_level_tasks # => ["default"]
end
//}



