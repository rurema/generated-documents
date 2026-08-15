names=when_writing
visibility=public
kind=defined
source_location=manual/api/rake/RakeFileUtils.md
since_by_name=when_writing=1.9.3
until_by_name=
rbs_sig=(uninitialized)

### def when_writing(msg = nil){ ... }

[m:RakeFileUtils.nowrite_flag] が真である場合与えられたブロックを実行せずに、与えられたメッセージを表示します。

そうでない場合は、与えられたブロックを実行します。

- **param** `msg` -- 表示するメッセージを指定します。

```ruby title="例"
when_writing("Building Project") do
  project.build
end
```

