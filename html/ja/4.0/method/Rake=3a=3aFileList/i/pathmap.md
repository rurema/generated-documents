# Rake::FileList#pathmap

### def pathmap(spec = nil) -> Rake::FileList

各要素に [String#pathmap](../../../method/String/i/pathmap.md) を適用した新しい [Rake::FileList](../../../class/Rake=3a=3aFileList.md) を返します。

```ruby
# Rakefile での記載例とする

task default: :test_rake_app
task :test_rake_app do
  file_list = FileList.new("test1.rb", "test2.rb", "test3.rb")
  p file_list.pathmap("%n") # => ["test1", "test2", "test3"]
end
```

- **SEE** [String#pathmap](../../../method/String/i/pathmap.md)
