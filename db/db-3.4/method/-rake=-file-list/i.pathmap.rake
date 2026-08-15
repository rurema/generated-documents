names=pathmap
visibility=public
kind=defined
source_location=manual/api/rake/Rake__FileList.md
since_by_name=pathmap=1.9.3
until_by_name=
rbs_sig=(uninitialized)

### def pathmap(spec = nil) -> Rake::FileList

各要素に [m:String#pathmap] を適用した新しい [c:Rake::FileList] を返します。

```ruby
# Rakefile での記載例とする

task default: :test_rake_app
task :test_rake_app do
  file_list = FileList.new("test1.rb", "test2.rb", "test3.rb")
  p file_list.pathmap("%n") # => ["test1", "test2", "test3"]
end
```

- **SEE** [m:String#pathmap]

