names=create_rule
visibility=public
kind=defined
source_location=manual/api/rake/Rake__TaskManager.md

### def create_rule(*args){ ... }

与えられたパラメータに従ってルールを作成します。

- **param** `args` -- ルールに与えるパラメータを指定します。

```ruby
# Rakefile での記載例とする

task default: :test_rake_app
task :test_rake_app do
  rule = Rake.application.create_rule '.txt' => '.md' do |t|
    "#{t}"
  end
  p rule # => [[/\.txt$/, [], [".md"], nil, #<Proc:0x0000558dd2e32d20 /path/to/Rakefile:5>]]
end
```

