# CSV.table

### def CSV.table(path, options = Hash.new) -> CSV::Table | [Array]

以下と同等のことを行うメソッドです。

```ruby
CSV.read( path, { headers:           true,
                  converters:        :numeric,
                  header_converters: :symbol }.merge(options) )
```

- **param** `path` -- CSV ファイルのパス(文字列)、または [StringIO](../../../class/StringIO.md) オブジェクトを指定します。[StringIO](../../../class/StringIO.md) を渡した場合はその内容から読み込みます。

- **param** `options` -- [CSV.new](../../../method/CSV/s/new.md) のオプションと同じオプションを指定できます。


- **SEE** [CSV.read](../../../method/CSV/s/read.md)
