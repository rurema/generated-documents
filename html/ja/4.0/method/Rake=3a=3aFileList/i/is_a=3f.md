# Rake::FileList#is_a?

### def is_a?(klass) -> bool
### def kind_of?(klass) -> bool

自身に [Array](../../../class/Array.md) のフリをさせます。

```ruby
# Rakefile での記載例とする

task default: :test_rake_app
task :test_rake_app do
  file_list = FileList.new("test1.rb", "test2.rb", "test3.rb")
  p file_list.is_a?(Array)  # => true
  p file_list.is_a?(String) # => false
end
```
