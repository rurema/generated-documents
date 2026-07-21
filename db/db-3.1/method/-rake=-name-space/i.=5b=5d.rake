names=[]
visibility=public
kind=defined
source_location=manual/api/rake/Rake__NameSpace.md
since_by_name==5b=5d=1.9.3
until_by_name=

### def [](name) -> Rake::Task

与えられた名前のタスクを返します。

- **param** `name` -- タスクの名前を指定します。

```ruby
# Rakefile での記載例とする

namespace :ns do |ns|
  task :ts1 do
  end
  task :ts2 do
  end

  p ns[:ts1] # => <Rake::Task ns:ts1 => []>
  p ns[:ts2] # => <Rake::Task ns:ts2 => []>
end
```

