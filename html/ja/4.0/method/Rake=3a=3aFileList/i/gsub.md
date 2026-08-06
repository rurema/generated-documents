# Rake::FileList#gsub

### def gsub(pattern, replace) -> Rake::FileList

自身に含まれるファイルリストのそれぞれのエントリに対して [String#gsub](../../../method/String/i/gsub.md) を実行し、結果を新しい [Rake::FileList](../../../class/Rake=3a=3aFileList.md) として返します。

```ruby title="例"
p FileList['lib/test/file', 'x/y'].gsub(/\//, "\\") # => ["lib\\test\\file", "x\\y"]
```
