names=rakefile
visibility=public
kind=defined
source_location=manual/api/rake/Rake__Application.md
since_by_name=rakefile=1.9.3
until_by_name=

### def rakefile -> String

実際に使用されている Rakefile の名前を返します。

```ruby
# Rakefile での記載例とする

task default: :test_rake_app
task :test_rake_app do
  p Rake.application.rakefile # => "Rakefile"
end
```



