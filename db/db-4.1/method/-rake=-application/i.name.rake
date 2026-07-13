names=name
visibility=public
kind=defined
source_location=manual/api/rake/Rake__Application.md

### def name -> String

アプリケーションの名前を返します。通常は 'rake' という名前を返します。

```ruby
# Rakefile での記載例とする

task default: :test_rake_app
task :test_rake_app do
  p Rake.application.name # => "rake"
end
```

