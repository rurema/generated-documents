# Rake::TaskArguments#new_scope

### def new_scope(names) -> Rake::TaskArguments

与えられたパラメータ名のリストを使用して新しい [Rake::TaskArguments](../../../class/Rake=3a=3aTaskArguments.md) を作成します。

- **param** `names` -- パラメータ名のリストを指定します。

```ruby
# Rakefile での記載例とする

task default: :test_rake_app
task :test_rake_app do
  arguments = Rake::TaskArguments.new(["name1", "name2"], ["value1", "value2"])
  new_arguments = arguments.new_scope(["name3", "name4"])
  p new_arguments         # => #<Rake::TaskArguments >
  p new_arguments.names   # => ["name3", "name4"]
end
```
