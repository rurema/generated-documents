names=directory
visibility=private
kind=defined
source_location=manual/api/rake/Rake__DSL.md
since_by_name=directory=3.0
until_by_name=
rbs_sig=(uninitialized)

### def directory(dir) -> ()

与えられたディレクトリを作成するタスクを定義します。

- **param** `dir` -- 作成するディレクトリを指定します。

```ruby title="例"
directory 'testdata/doc'
```

