names=existing!
visibility=public
kind=defined
source_location=manual/api/rake/Rake__FileList.md
since_by_name=existing=21=1.9.3
until_by_name=

### def existing! -> self

自身に含まれるファイルのうちファイルシステムに存在するファイルのみを
含むように自身を変更して返します。

```ruby
# Rakefile での記載例とする

IO.write("test1.rb", "test")
IO.write("test2.rb", "test")

task default: :test_rake_app
task :test_rake_app do
  file_list = FileList.new("test1.rb", "test2.rb", "test3.rb")
  p file_list.existing! # => ["test1.rb", "test2.rb"]
  p file_list         # => ["test1.rb", "test2.rb"]
end
```

