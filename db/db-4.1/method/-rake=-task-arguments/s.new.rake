names=new
visibility=public
kind=defined
source_location=manual/api/rake/Rake__TaskArguments.md
since_by_name=new=1.9.3
until_by_name=
rbs_sig=(uninitialized)

### def Rake::TaskArguments.new(names, values, parent = nil)

自身を初期化します。

- **param** `names` -- パラメータの名前のリストを指定します。

- **param** `values` -- パラメータの値のリストを指定します。

- **param** `parent` -- 親となる [c:Rake::TaskArguments] を指定します。

```ruby
# Rakefile での記載例とする

task default: :test_rake_app
task :test_rake_app do
  arguments1 = Rake::TaskArguments.new(["name1", "name2"], ["value1", "value2"])
  arguments2 = Rake::TaskArguments.new(["name3", "name4"], ["value3", "value4"], arguments1)
  p arguments1 # => #<Rake::TaskArguments name1: value1, name2: value2>
  p arguments2 # => #<Rake::TaskArguments name3: value3, name4: value4>
  p arguments2["name1"] # => "value1"
  p arguments2["name3"] # => "value3"
end
```
