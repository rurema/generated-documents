names=gsub
visibility=public
kind=defined
source_location=manual/api/rake/Rake__FileList.md
since_by_name=gsub=1.9.3
until_by_name=

### def gsub(pattern, replace) -> Rake::FileList

自身に含まれるファイルリストのそれぞれのエントリに対して [m:String#gsub] を実行し、結果を新しい [c:Rake::FileList] として返します。

```ruby title="例"
p FileList['lib/test/file', 'x/y'].gsub(/\//, "\\") # => ["lib\\test\\file", "x\\y"]
```

