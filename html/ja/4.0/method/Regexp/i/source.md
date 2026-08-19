# Regexp#source

### def source -> String

`self` のもととなった文字列表現を生成して返します。

```ruby title="例"
re = /foo|bar|baz/i
p re.source     # => "foo|bar|baz"
```
