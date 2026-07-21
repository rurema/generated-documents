names=clear
visibility=public
kind=defined
source_location=manual/api/rake/Rake__TaskManager.md
since_by_name=clear=1.9.3
until_by_name=

### def clear

全てのタスクとルールをクリアします。

```ruby
# Rakefile での記載例とする

task default: :test_rake_app
task :test_rake_app do
  p Rake.application.tasks # => [<Rake::Task default => [test_rake_app]>, <Rake::Task test_rake_app => []>]
  p Rake.application.clear # => []
  p Rake.application.tasks # => []
end
```

