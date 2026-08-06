# Rake::FileList#clear_exclude

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
