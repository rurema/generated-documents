# Regexp.new

### def Regexp.compile(string, option = nil) -> Regexp
### def Regexp.new(string, option = nil) -> Regexp

文字列 `string` をコンパイルして正規表現オブジェクトを生成して返します。

第一引数が正規表現オブジェクトであればそれを複製して返します。その場合、第二引数は警告の上無視されます。

- **param** `string` -- 正規表現を文字列として与えます。

- **param** `option` -- [Regexp::IGNORECASE](../../../method/Regexp/c/IGNORECASE.md), [Regexp::MULTILINE](../../../method/Regexp/c/MULTILINE.md),
              [Regexp::EXTENDED](../../../method/Regexp/c/EXTENDED.md)
              の論理和を指定します。
              [String](../../../class/String.md) であれば `"i"`（IGNORECASE）、`"m"`（MULTILINE）、`"x"`（EXTENDED）を並べたオプション文字列として解釈します。それ以外の文字を含む文字列を与えると [ArgumentError](../../../class/ArgumentError.md) が発生します。
              [Integer](../../../class/Integer.md) でも [String](../../../class/String.md) でもなければ真偽値の指定とみなされ、真なら [Regexp::IGNORECASE](../../../method/Regexp/c/IGNORECASE.md) の指定と同じになります。

- **raise**  `RegexpError` -- 正規表現のコンパイルに失敗した場合発生します。

```ruby title="例"
str = "This is Regexp"
t1 = Regexp.compile("this is regexp", Regexp::IGNORECASE)
t1.match(str)
p $~ # => "This is Regexp"

t2 = Regexp.compile('
this         # ここは使用されない
\ is
\ regexp     # ここも使用されない
', Regexp::EXTENDED | Regexp::IGNORECASE)
t2.match(str)
p Regexp.last_match # => "This is Regexp"

str = "ふるいけや\nかわずとびこむ\nみずのおと"
t2 = Regexp.compile("ふる.*?と", Regexp::MULTILINE)
p t2.match(str)[0]  # => "ふるいけや\nかわずと"
```
