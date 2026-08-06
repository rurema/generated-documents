# Net::HTTPHeader#canonical_each

### def each_capitalized {|name, value| .... } -> ()
### def canonical_each {|name, value| .... } -> ()

ヘッダフィールドの正規化名とその値のペアをブロックに渡し、呼びだします。

正規化名は name に対し

```ruby
name.downcase.split(/-/).capitalize.join('-')
```

で求まる文字列です。
