names=last_description=
visibility=public
kind=defined
source_location=manual/api/rake/Rake__TaskManager.md

### def last_description=(description)

最新の詳細説明をセットします。

```ruby
# Rakefile での記載例とする

task default: :test_rake_app1

desc "test1"
task :test_rake_app1 do |task|
  p task.application.last_description # => "test2"
  task.application.last_description = "test3"
  p task.application.last_description # => "test3"
end

desc "test2"
task :test_rake_app2 do |task|
end
```

