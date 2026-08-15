names=tasks
visibility=public
kind=defined
source_location=manual/api/rake/Rake__NameSpace.md
since_by_name=tasks=1.9.3
until_by_name=
rbs_sig=(uninitialized)

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

