names=existing
visibility=public
kind=defined
source_location=manual/api/rake/Rake__FileList.md
since_by_name=existing=1.9.3
until_by_name=

### def existing -> Rake::FileList

自身に含まれるファイルのうちファイルシステムに存在するファイルのみを
含む [c:Rake::FileList] を返します。

```ruby
# Rakefile での記載例とする

IO.write("test1.rb", "test")
IO.write("test2.rb", "test")

task default: :test_rake_app
task :test_rake_app do
  file_list = FileList.new("test1.rb", "test2.rb", "test3.rb")
  p file_list.existing # => ["test1.rb", "test2.rb"]
end
```

