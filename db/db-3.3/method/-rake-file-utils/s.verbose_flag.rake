names=verbose_flag
visibility=public
kind=defined
source_location=manual/api/rake/RakeFileUtils.md
since_by_name=verbose_flag=1.9.3
until_by_name=

### def verbose_flag -> bool

この値が真の場合、詳細を表示します。

```ruby
# Rakefile での記載例とする

task default: :sample_file_task

file :sample_file_task do |t|
  # --verbose で rake を実行する
  p RakeFileUtils.verbose_flag # => true
end
```

