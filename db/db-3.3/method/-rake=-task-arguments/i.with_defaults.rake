names=with_defaults
visibility=public
kind=defined
source_location=manual/api/rake/Rake__TaskArguments.md
since_by_name=with_defaults=1.9.3
until_by_name=
rbs_sig=(uninitialized)

### def with_defaults(defaults) -> Hash

パラメータにデフォルト値をセットします。

- **param** `defaults` -- デフォルト値として使用するキーと値を格納したハッシュを指定します。

```ruby
# Rakefile での記載例とする

task default: :test_rake_app
task :test_rake_app do
  arguments = Rake::TaskArguments.new(["name1", "name2"], ["value1", "value2"])
  p arguments.to_hash                                      # => {:name1=>"value1", :name2=>"value2"}
  p arguments.with_defaults({ default_key: "default_value"}) # => {:default_key=>"default_value", :name1=>"value1", :name2=>"value2"}
  p arguments.to_hash                                      # => {:default_key=>"default_value", :name1=>"value1", :name2=>"value2"}
end
```

