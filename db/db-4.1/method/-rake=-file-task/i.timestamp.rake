names=timestamp
visibility=public
kind=defined
source_location=manual/api/rake/Rake__FileTask.md
since_by_name=timestamp=1.9.3
until_by_name=

### def timestamp -> Time | Rake::LateTime

ファイルタスクのタイムスタンプを返します。

```ruby
# Rakefile での記載例とする

task default: "test.txt"
file "test.txt" do |task|
  Rake.application.options.build_all = false
  p task.timestamp # => #<Rake::LateTime:0x2ba58f0>
end
```

