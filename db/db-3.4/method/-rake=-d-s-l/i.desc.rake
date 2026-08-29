names=desc
visibility=private
kind=defined
source_location=manual/api/rake/Rake__DSL.md
since_by_name=desc=3.0
until_by_name=
rbs_sig=(uninitialized)

### def desc(description) -> String

直後の Rake タスクの説明を登録します。

- **param** `description` -- 直後のタスクの説明を指定します。

```ruby title="例"
desc "Run the Unit Tests"
task :test => [:build] do
  runtests
end
```

