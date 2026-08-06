# RakeFileUtils.nowrite_flag

### def RakeFileUtils.nowrite_flag -> bool

この値が真の場合、実際のファイル書き込みをともなう操作は行いません。
そうでない場合、ファイル書き込みを行います。

```ruby
# Rakefile での記載例とする
task default: :sample_file_task

file :sample_file_task do |t|
  p RakeFileUtils.nowrite_flag # => false
end
```
