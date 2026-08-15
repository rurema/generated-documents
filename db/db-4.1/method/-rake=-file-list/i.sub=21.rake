names=sub!
visibility=public
kind=defined
source_location=manual/api/rake/Rake__FileList.md
since_by_name=sub=21=1.9.3
until_by_name=
rbs_sig=(uninitialized)

### def sub!(pattern, replace) -> self

自身に含まれるファイルリストのそれぞれのエントリに対して [m:String#sub] を実行します。
自身を破壊的に変更します。

```ruby
# Rakefile での記載例とする

task default: :test_rake_app
task :test_rake_app do
  file_list = FileList['a.c', 'b.c']
  p file_list.sub!(/\.c$/, '.o') # => ["a.o", "b.o"]
  p file_list                  # => ["a.o", "b.o"]
end
```

