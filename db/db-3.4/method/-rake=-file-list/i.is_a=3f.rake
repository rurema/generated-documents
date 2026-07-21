names=is_a?,kind_of?
visibility=public
kind=defined
source_location=manual/api/rake/Rake__FileList.md
since_by_name=is_a=3f=1.9.3,kind_of=3f=1.9.3
until_by_name=

### def is_a?(klass) -> bool
### def kind_of?(klass) -> bool

自身に [c:Array] のフリをさせます。

```ruby
# Rakefile での記載例とする

task default: :test_rake_app
task :test_rake_app do
  file_list = FileList.new("test1.rb", "test2.rb", "test3.rb")
  p file_list.is_a?(Array)  # => true
  p file_list.is_a?(String) # => false
end
```

