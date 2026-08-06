# Proc#source_location

### def source_location -> [String, Integer] | nil

ソースコードのファイル名と行番号を配列で返します。

その手続オブジェクトが ruby で定義されていない(つまりネイティブである)場合は nil を返します。

```ruby title="例"
# /path/to/target.rb を実行
proc {}.source_location            # => ["/path/to/target.rb", 1]
proc {}.source_location            # => ["/path/to/target.rb", 2]
p (eval "proc {}").source_location # => ["(eval)", 1]
p method(:p).to_proc.source_location # => nil
```

- **SEE** [Method#source_location](../../../method/Method/i/source_location.md)
