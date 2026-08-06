# Regexp#options

### def options -> Integer

正規表現の生成時に指定されたオプションを返します。戻り値は、
[Regexp::EXTENDED](../../../method/Regexp/c/EXTENDED.md), [Regexp::IGNORECASE](../../../method/Regexp/c/IGNORECASE.md),
[Regexp::MULTILINE](../../../method/Regexp/c/MULTILINE.md),
[Regexp::FIXEDENCODING](../../../method/Regexp/c/FIXEDENCODING.md),
[Regexp::NOENCODING](../../../method/Regexp/c/NOENCODING.md),
の論理和です。

これで得られるオプションには生成時に指定したもの以外のオプションを含んでいる場合があります。これらのビットは内部的に用いられているもので、[Regexp.new](../../../method/Regexp/s/new.md) にこれらを渡しても無視されます。

```ruby title="例"
p Regexp::IGNORECASE # => 1
p //i.options        # => 1

p Regexp.new("foo", Regexp::IGNORECASE ).options # => 1
p Regexp.new("foo", Regexp::EXTENDED).options    # => 2
p Regexp.new("foo", Regexp::IGNORECASE | Regexp::EXTENDED).options # => 3
p Regexp.new("foo", Regexp::MULTILINE).options # => 4
p Regexp.new("foo", Regexp::IGNORECASE | Regexp::MULTILINE ).options # => 5
p Regexp.new("foo", Regexp::MULTILINE | Regexp::EXTENDED).options # =>6
p Regexp.new("foo", Regexp::IGNORECASE | Regexp::MULTILINE | Regexp::EXTENDED).options # => 7
```
