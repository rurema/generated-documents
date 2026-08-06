# Rake::FileList#sub!

### def sub!(pattern, replace) -> self

自身に含まれるファイルリストのそれぞれのエントリに対して [String#sub](../../../method/String/i/sub.md) を実行します。
自身を破壊的に変更します。

```ruby
# Rakefile での記載例とする

task default: :test_rake_app
task :test_rake_app do
  file_list = FileList['a.c', 'b.c']
  p file_list.sub!(/\.c$/, '.o') # => ["a.o", "b.o"]
  p file_list                  # => ["a.o", "b.o"]
end
```
