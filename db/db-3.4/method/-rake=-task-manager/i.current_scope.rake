names=current_scope
visibility=public
kind=defined
source_location=manual/api/rake/Rake__TaskManager.md
since_by_name=current_scope=1.9.3
until_by_name=
rbs_sig=(uninitialized)

### def current_scope -> Array

現在のスコープを返します。

```ruby
# Rakefile での記載例とする

task default: :test_rake_app
task :test_rake_app do
  p Rake.application.current_scope # => LL()
end
```

