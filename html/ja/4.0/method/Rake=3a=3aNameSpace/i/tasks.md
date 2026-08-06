# Rake::NameSpace#tasks

### def tasks -> Array

タスクのリストを返します。

```ruby
# Rakefile での記載例とする

namespace :ns do |ns|
  task :ts1 do
  end
  task :ts2 do
  end

  p ns.tasks # => [<Rake::Task ns:ts1 => []>, <Rake::Task ns:ts2 => []>]
end
```
