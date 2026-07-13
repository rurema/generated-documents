names=clone
visibility=public
kind=defined
source_location=manual/api/rake/Rake__Cloneable.md

### def clone -> object

自身を複製します。

自身がフリーズされていれば返されるオブジェクトもフリーズされています。

```ruby
# Rakefile での記載例とする

task default: :test_rake_app
task :test_rake_app do
  file_list = FileList['a.c', 'b.c']
  clone = file_list.clone
  p clone               # => ["a.c", "b.c"]
  clone.exclude("a.c")
  p clone == file_list  # => false
end
```

