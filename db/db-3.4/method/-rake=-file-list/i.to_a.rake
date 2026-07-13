names=to_a,to_ary
visibility=public
kind=defined
source_location=manual/api/rake/Rake__FileList.md

### def to_a -> Array
### def to_ary -> Array

内部的な配列を返します。

```ruby
# Rakefile での記載例とする

task default: :test_rake_app
task :test_rake_app do
  file_list = FileList['a.c', 'b.c']
  p file_list.to_a # => ["a.c", "b.c"]
end
```

