names=new
visibility=public
kind=defined
source_location=manual/api/rake/Rake__FileList.md
since_by_name=new=1.9.3
until_by_name=
rbs_sig=(uninitialized)

### def Rake::FileList.new(*patterns){|self| ... }

与えられたパターンをもとにして自身を初期化します。

ブロックが与えられている場合は、自身をブロックパラメータとしてブロックを評価します。

- **param** `patterns` -- パターンを指定します。

```ruby title="例"
file_list = FileList.new('lib/**/*.rb', 'test/test*.rb')

pkg_files = FileList.new('lib/**/*') do |fl|
  fl.exclude(/\bCVS\b/)
end
```

