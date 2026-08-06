# Rake::Application#rakefile

### def rakefile -> String

実際に使用されている Rakefile の名前を返します。

```ruby
# Rakefile での記載例とする

task default: :test_rake_app
task :test_rake_app do
  p Rake.application.rakefile # => "Rakefile"
end
```
