# Rake::FileList#gsub!

### def gsub!(pattern, replace) -> self

自身に含まれるファイルリストのそれぞれのエントリに対して [String#gsub](../../../method/String/i/gsub.md) を実行します。
自身を破壊的に変更します。

```ruby
# Rakefile での記載例とする

IO.write("test1.rb", "test")
IO.write("test2.rb", "test")

task default: :test_rake_app
task :test_rake_app do
  file_list = FileList.new("test1.rb", "test2.rb", "test3.rb")
  p file_list.gsub!(/\.rb/, ".erb") # => ["test1.erb", "test2.erb", "test3.erb"]
  p file_list                     # => ["test1.erb", "test2.erb", "test3.erb"]
end
```
