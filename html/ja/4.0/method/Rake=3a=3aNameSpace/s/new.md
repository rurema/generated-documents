# Rake::NameSpace.new

### def Rake::NameSpace.new(task_manager, scope_list)

自身を初期化します。

- **param** `task_manager` -- [Rake::Application](../../../class/Rake=3a=3aApplication.md) のインスタンスを指定します。

- **param** `scope_list` -- 名前空間のリストを指定します。

```ruby
# Rakefile での記載例とする

task default: :test_rake_app
task :test_rake_app do
  name_space = Rake::NameSpace.new(Rake.application, Rake::Scope.new("sample"))
  p name_space.scope # => LL("sample")
end
```
