# Rake::FileTask#timestamp

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
