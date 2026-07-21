names=split_all
visibility=public
kind=added
source_location=manual/api/rake/FileUtils.md
since_by_name=split_all=1.9.3
until_by_name=

### def split_all(path) -> Array

与えられたパスをディレクトリごとに分割します。

- **param** `path` -- 分割するパスを指定します。

```ruby title="例"
p split_all("a/b/c") # => ["a", "b", "c"]
```

