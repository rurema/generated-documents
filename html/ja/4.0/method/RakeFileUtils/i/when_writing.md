# RakeFileUtils#when_writing

### def when_writing(msg = nil){ ... }

[RakeFileUtils.nowrite_flag](../../../method/RakeFileUtils/s/nowrite_flag.md) が真である場合与えられたブロックを実行せずに、与えられたメッセージを表示します。

そうでない場合は、与えられたブロックを実行します。

- **param** `msg` -- 表示するメッセージを指定します。

```ruby title="例"
when_writing("Building Project") do
  project.build
end
```
