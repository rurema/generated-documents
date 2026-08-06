# Rake::FileList#to_ary

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
