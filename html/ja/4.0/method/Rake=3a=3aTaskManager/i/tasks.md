# Rake::TaskManager#tasks

### def tasks -> Array

全てのタスクリストを返します。

```ruby
# Rakefile での記載例とする
require 'pp'

task default: :test_rake_app2

task :test_rake_app1 do |task|
end

task :test_rake_app2 do |task|
  pp task.application.tasks
  # => [<Rake::Task default => [test_rake_app2]>,
  #    <Rake::Task test_rake_app1 => []>,
  #    <Rake::Task test_rake_app2 => []>]
end
```
