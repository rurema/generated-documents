names=to_s
visibility=public
kind=defined
source_location=manual/api/rake/Rake__FileList.md
since_by_name=to_s=1.9.3
until_by_name=

### def to_s -> String

全ての要素をスペースで連結した文字列を返します。

```ruby
# Rakefile での記載例とする

task default: :test_rake_app
task :test_rake_app do
  file_list = FileList['a.c', 'b.c']
  p file_list.to_s # => "a.c b.c"
end
```

