names=sub
visibility=public
kind=defined
source_location=manual/api/rake/Rake__FileList.md
since_by_name=sub=1.9.3
until_by_name=

### def sub(pattern, replace) -> Rake::FileList

自身に含まれるファイルリストのそれぞれのエントリに対して [m:String#sub] を実行し、
結果を新しい [c:Rake::FileList] として返します。

```text title="例"
FileList['a.c', 'b.c'].sub(/\.c$/, '.o')  => ['a.o', 'b.o']
```

