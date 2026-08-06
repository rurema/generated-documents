# Rake::Application#init

### def init(app_name = 'rake')

コマンドラインオプションとアプリケーション名を初期化します。

```ruby title="例"
# Rakefile での記載例とする

task default: :test
task :test

p Rake.application.name # => "rake"
p Rake.application.init("MyApp") # => ["default"]
p Rake.application.name # => "MyApp"
```
