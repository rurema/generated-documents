# File.extname

### def File.extname(filename)    -> String

ファイル名 filename の拡張子部分(最後の "." に続く文字列)を返します。ディレクトリ名に含まれる "." や、ファイル名先頭の "."
は拡張子の一部としては見なされません。filename に拡張子が含まれない場合は空文字列を返します。

```ruby title="例"
p File.extname("foo/foo.txt")     # => ".txt"
p File.extname("foo/foo.tar.gz")  # => ".gz"
p File.extname("foo/bar")         # => ""
p File.extname("foo/.bar")        # => ""
p File.extname("foo.txt/bar")     # => ""
p File.extname(".foo")            # => ""

# Windows の場合
p File.extname("foo.")            # => ""
# Windows 以外の場合
p File.extname("foo.")            # => "."
```

- **param** `filename` -- ファイル名を表す文字列を指定します。

- **SEE** [File.basename](../../../method/File/s/basename.md), [File.dirname](../../../method/File/s/dirname.md)
