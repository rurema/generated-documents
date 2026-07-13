names=original_dir
visibility=public
kind=defined
source_location=manual/api/rake/Rake.md

### def original_dir -> String

Rake アプリケーションを開始したディレクトリを返します。

```ruby
# Rakefile での記載例とする

task default: :test_rake_app
task :test_rake_app do
  p Rake.original_dir # => "/path/to/dir"
end
```

