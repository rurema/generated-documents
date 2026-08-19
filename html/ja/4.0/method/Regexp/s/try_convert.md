# Regexp.try_convert

### def Regexp.try_convert(obj) -> Regexp | nil

`obj` を正規表現オブジェクトに変換するためのメソッドです。

`obj` が正規表現オブジェクトならそのまま `obj` を返します。

`obj` が正規表現オブジェクトでないとき、`to_regexp` メソッドに応答するなら `obj.to_regexp` の結果を返し、応答しないなら `nil` を返します。

```ruby title="例"
p Regexp.try_convert(/re/)    # => /re/
p Regexp.try_convert("re")    # => nil
```
