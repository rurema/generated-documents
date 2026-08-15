names=needed?
visibility=public
kind=defined
source_location=manual/api/rake/Rake__FileTask.md
since_by_name=needed=3f=1.9.3
until_by_name=
rbs_sig=(uninitialized)

### def needed? -> bool

このタスクが必要である場合は真を返します。
そうでない場合は偽を返します。

このタスクで作成しようとしているファイルが存在しない場合や、このタスクで作成しようとしているファイルが古い場合に真を返します。

```ruby
# Rakefile での記載例とする

task default: "test.txt"
file "test.txt" do |task|
  Rake.application.options.build_all = false
  p task.needed? # => true
  IO.write("test.txt", "test")
  p task.needed? # => false
end
```

