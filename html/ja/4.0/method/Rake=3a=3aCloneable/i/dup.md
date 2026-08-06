# Rake::Cloneable#dup

### def dup -> object

自身と同じクラスのオブジェクトを作成後、自身のインスタンス変数を全て新たに作成したオブジェクトにコピーします。

```ruby
# Rakefile での記載例とする

task default: :test_rake_app
task :test_rake_app do
  file_list = FileList['a.c', 'b.c']
  file_list.freeze
  dup = file_list.dup
  clone = file_list.clone
  p dup.exclude("a.c") # => ["b.c"]
  p clone.exclude("a.c") # => can't modify frozen Rake::FileList
end
```
