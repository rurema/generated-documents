names=import
visibility=public
kind=defined
source_location=manual/api/rake/Rake__FileList.md
since_by_name=import=1.9.3
until_by_name=
rbs_sig=(uninitialized)

### def import(array) -> self

与えられた配列を自身にインポートします。

- **param** `array` -- ファイル名のリストを指定します。

```ruby
# Rakefile での記載例とする

IO.write("test1.rb", "test")
IO.write("test2.rb", "test")

task default: :test_rake_app
task :test_rake_app do
  file_list = FileList.new("test1.rb", "test2.rb", "test3.rb")
  p file_list.import(["test4.rb", "test5.rb"]) # => ["test4.rb", "test5.rb", "test1.rb", "test2.rb", "test3.rb"]
  p file_list                                # => ["test4.rb", "test5.rb", "test1.rb", "test2.rb", "test3.rb"]
end
```

