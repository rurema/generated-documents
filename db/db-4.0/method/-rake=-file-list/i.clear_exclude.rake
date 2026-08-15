names=clear_exclude
visibility=public
kind=defined
source_location=manual/api/rake/Rake__FileList.md
since_by_name=clear_exclude=1.9.3
until_by_name=
rbs_sig=(uninitialized)

### def clear_exclude -> self

登録されている除外リストをクリアします。

```ruby
# Rakefile での記載例とする

task default: :test_rake_app
task :test_rake_app do
  file_list = FileList.new("test.rb", "test.bak")
  file_list.exclude("test.rb")
  # DEFAULT_IGNORE_PATTERNS と "test.rb" の双方の除外がクリアされる
  file_list.clear_exclude
  p file_list # => ["test.rb", "test.bak"]
end
```

