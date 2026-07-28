names=ruby
visibility=public
kind=added
source_location=manual/api/rake/FileUtils.md
since_by_name=ruby=1.9.3
until_by_name=

### def ruby(*args){|result, status| ... }

与えられた引数で Ruby インタプリタを実行します。

- **param** `args` -- Ruby インタプリタに与える引数を指定します。

```ruby title="例"
ruby %{-pe '$_.upcase!' <README}
```

- **SEE** [m:FileUtils#sh]

