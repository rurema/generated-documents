names=desc
visibility=private
kind=added
source_location=manual/api/rake/Kernel.md

### def desc(description) -> String

直後の Rake タスクの説明を登録します。

- **param** `description` -- 直後のタスクの説明を指定します。

```ruby title="例"
desc "Run the Unit Tests"
task :test => [:build] do
  runtests
end
```

