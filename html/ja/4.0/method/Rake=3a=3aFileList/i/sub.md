# Rake::FileList#sub

### def sub(pattern, replace) -> Rake::FileList

自身に含まれるファイルリストのそれぞれのエントリに対して [String#sub](../../../method/String/i/sub.md) を実行し、結果を新しい [Rake::FileList](../../../class/Rake=3a=3aFileList.md) として返します。

```text title="例"
FileList['a.c', 'b.c'].sub(/\.c$/, '.o')  => ['a.o', 'b.o']
```
