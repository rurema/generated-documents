names=names
visibility=public
kind=defined
source_location=manual/api/rake/Rake__TaskArguments.md
since_by_name=names=1.9.3
until_by_name=
rbs_sig=(uninitialized)

### def names -> Array

パラメータ名のリストを返します。

```ruby
# Rakefile での記載例とする

task default: :test_rake_app
task :test_rake_app do
  arguments = Rake::TaskArguments.new(["name1", "name2"], ["value1", "value2"])
  p arguments.names # => ["name1", "name2"]
end
```

