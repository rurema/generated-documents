names=clear
visibility=public
kind=defined
source_location=manual/api/rake/Rake__TaskManager.md

### def clear

全てのタスクとルールをクリアします。

```ruby
# Rakefile での記載例とする

task default: :test_rake_app
task :test_rake_app do
  Rake.application.tasks # => [<Rake::Task default => [test_rake_app]>, <Rake::Task test_rake_app => []>]
  Rake.application.clear # => []
  Rake.application.tasks # => []
end
```

