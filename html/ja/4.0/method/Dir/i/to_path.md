# Dir#to_path

### def path    -> String
### def to_path -> String

オープンしているディレクトリのパス名を文字列で返します。

```ruby title="例"
Dir.open("..") do |d|
  p d.path    # => ".."
  p d.to_path # => ".."
end
```
