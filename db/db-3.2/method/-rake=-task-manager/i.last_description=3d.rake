names=last_description=
visibility=public
kind=defined
source_location=refm/api/src/rake/Rake__TaskManager:164

--- last_description=(description)

最新の詳細説明をセットします。

//emlist[][ruby]{
# Rakefile での記載例とする

task default: :test_rake_app1

desc "test1"
task :test_rake_app1 do |task|
  task.application.last_description # => "test2"
  task.application.last_description = "test3"
  task.application.last_description # => "test3"
end

desc "test2"
task :test_rake_app2 do |task|
end
//}

