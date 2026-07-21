names=name
visibility=public
kind=defined
source_location=manual/api/rake/Rake__Application.md
since_by_name=name=1.9.3
until_by_name=

### def name -> String

アプリケーションの名前を返します。通常は 'rake' という名前を返します。

```ruby
# Rakefile での記載例とする

task default: :test_rake_app
task :test_rake_app do
  p Rake.application.name # => "rake"
end
```

