# Regexp.try_convert

### def Regexp.try_convert(obj) -> Regexp | nil

obj を to_regexp メソッドで Regexp オブジェクトに変換しようと試みます。

変換に成功した場合はそれを返し、失敗時には nil を返します。

```ruby title="例"
p Regexp.try_convert(/re/)    # => /re/
p Regexp.try_convert("re")    # => nil
```
