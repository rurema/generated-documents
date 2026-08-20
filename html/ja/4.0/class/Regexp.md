# class Regexp < Object

正規表現（regular expression）を表すクラスです。

正規表現のリテラルはスラッシュで囲んだ形式で記述します。

```ruby
/^this is regexp/
```

`Regexp.new(string)` を使って正規表現オブジェクトを動的に生成することもできます。

```ruby
str = "this is regexp"
rp1 = Regexp.new("^this is regexp")
p rp1 =~ str           # => 0
p Regexp.last_match[0] # => "this is regexp"
```

Ruby 3.0 から正規表現リテラルは freeze されるようになりました。

```ruby
p /abc/.frozen?
# => true
p /a#{42}bc/.frozen?
# => true
p Regexp.new('abc').frozen?
# => false
```

[spec/regexp](../doc/spec=2fregexp.md) や [spec/literal#regexp](../doc/spec=2fliteral.md#regexp) も参照してください。

## Class Methods

- [compile](../method/Regexp/s/compile.md)
- [new](../method/Regexp/s/new.md)
- [escape](../method/Regexp/s/escape.md)
- [quote](../method/Regexp/s/quote.md)
- [json_create](../method/Regexp/s/json_create.md)
- [last_match](../method/Regexp/s/last_match.md)
- [linear_time?](../method/Regexp/s/linear_time=3f.md)
- [timeout](../method/Regexp/s/timeout.md)
- [timeout=](../method/Regexp/s/timeout=3d.md)
- [try_convert](../method/Regexp/s/try_convert.md)
- [union](../method/Regexp/s/union.md)

## Instance Methods

- [==](../method/Regexp/i/=3d=3d.md)
- [eql?](../method/Regexp/i/eql=3f.md)
- [===](../method/Regexp/i/=3d=3d=3d.md)
- [=~](../method/Regexp/i/=3d=7e.md)
- [~](../method/Regexp/i/=7e.md)
- [casefold?](../method/Regexp/i/casefold=3f.md)
- [encoding](../method/Regexp/i/encoding.md)
- [fixed_encoding?](../method/Regexp/i/fixed_encoding=3f.md)
- [hash](../method/Regexp/i/hash.md)
- [inspect](../method/Regexp/i/inspect.md)
- [match](../method/Regexp/i/match.md)
- [match?](../method/Regexp/i/match=3f.md)
- [named_captures](../method/Regexp/i/named_captures.md)
- [names](../method/Regexp/i/names.md)
- [options](../method/Regexp/i/options.md)
- [source](../method/Regexp/i/source.md)
- [timeout](../method/Regexp/i/timeout.md)
- [to_json](../method/Regexp/i/to_json.md)
- [to_s](../method/Regexp/i/to_s.md)

## Constants

- [EXTENDED](../method/Regexp/c/EXTENDED.md)
- [FIXEDENCODING](../method/Regexp/c/FIXEDENCODING.md)
- [IGNORECASE](../method/Regexp/c/IGNORECASE.md)
- [MULTILINE](../method/Regexp/c/MULTILINE.md)
- [NOENCODING](../method/Regexp/c/NOENCODING.md)
