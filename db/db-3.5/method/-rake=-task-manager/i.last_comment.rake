names=last_comment,last_description
visibility=public
kind=defined
source_location=refm/api/src/rake/Rake__TaskManager:144

--- last_description -> String
--- last_comment -> String

Rakefile 内の最新の詳細説明を追跡するためのメソッドです。

//emlist[][ruby]{
# Rakefile での記載例とする

task default: :test_rake_app1

desc "test1"
task :test_rake_app1 do |task|
  p task.application.last_description # => "test2"
end

desc "test2"
task :test_rake_app2 do |task|
end
//}

