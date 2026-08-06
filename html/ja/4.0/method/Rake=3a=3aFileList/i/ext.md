# Rake::FileList#ext

### def ext(newext = '') -> Rake::FileList

各要素に [String#ext](../../../method/String/i/ext.md) を適用した新しい [Rake::FileList](../../../class/Rake=3a=3aFileList.md) を返します。

```ruby
# Rakefile での記載例とする

IO.write("test1.rb", "test")
IO.write("test2.rb", "test")

task default: :test_rake_app
task :test_rake_app do
  file_list = FileList.new("test1.rb", "test2.rb", "test3.rb")
  p file_list.ext(".erb") # => ["test1.erb", "test2.erb", "test3.erb"]
end
```

- **SEE** [String#ext](../../../method/String/i/ext.md)
