names=to_hash
visibility=public
kind=defined
source_location=manual/api/rake/Rake__TaskArguments.md
since_by_name=to_hash=1.9.3
until_by_name=
rbs_sig=(uninitialized)

### def to_hash -> Hash

パラメータ名と対応する値を格納したハッシュを返します。

```ruby
# Rakefile での記載例とする

task default: :test_rake_app
task :test_rake_app do
  arguments = Rake::TaskArguments.new(["name1", "name2"], ["value1", "value2"])
  p arguments.to_hash # => {:name1=>"value1", :name2=>"value2"}
end
```

