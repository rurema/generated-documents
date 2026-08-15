names=original_dir
visibility=public
kind=defined
source_location=manual/api/rake/Rake__Application.md
since_by_name=original_dir=1.9.3
until_by_name=
rbs_sig=(uninitialized)

### def original_dir -> String

rake コマンドを実行したディレクトリを返します。

```ruby
# Rakefile での記載例とする

task default: :test_rake_app
task :test_rake_app do
  p Rake.application.original_dir # => "/path/to/dir"
end
```



