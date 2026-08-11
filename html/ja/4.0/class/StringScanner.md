# class StringScanner < Object

StringScanner は文字列スキャナクラスです。
簡単に高速なスキャナを記述できます。

```ruby title="例"
require 'strscan'

s = StringScanner.new('This is an example string')
p s.eos?          # => false

p s.scan(/\w+/)   # => "This"
p s.scan(/\w+/)   # => nil
p s.scan(/\s+/)   # => " "
p s.scan(/\s+/)   # => nil
p s.scan(/\w+/)   # => "is"
p s.eos?          # => false

p s.scan(/\s+/)   # => " "
p s.scan(/\w+/)   # => "an"
p s.scan(/\s+/)   # => " "
p s.scan(/\w+/)   # => "example"
p s.scan(/\s+/)   # => " "
p s.scan(/\w+/)   # => "string"
p s.eos?          # => true

p s.scan(/\s+/)   # => nil
p s.scan(/\w+/)   # => nil
```

StringScanner オブジェクトはスキャンする文字列と「スキャンポインタ」のセットです。
スキャンポインタとはスキャンしおわったところを示すインデックスのことです。
オブジェクト作成直後にはスキャンポインタは文字列先頭にあり、その地点でのみマッチを試します。マッチしたらその後ろにポインタを進めます。

```ruby title="例"
require 'strscan'

## a string and a scan pointer   ("_" = scan pointer)

s = StringScanner.new('This is an example string')
# _This is an example string     s.eos? = false
s.scan(/\w+/)
# This_ is an example string     s.eos? = false
s.scan(/\s+/)
# This _is an example string     s.eos? = false
s.scan(/\w+/)
# This is_ an example string     s.eos? = false
s.scan(/\s+/)
# This is _an example string     s.eos? = false
s.scan(/\w+/)
# This is an_ example string     s.eos? = false
s.scan(/\s+/)
# This is an _example string     s.eos? = false
s.scan(/\w+/)
# This is an example_ string     s.eos? = false
s.scan(/\s+/)
# This is an example _string     s.eos? = false
s.scan(/\w+/)
# This is an example string_     s.eos? = true
```

現在のスキャンポインタがさす地点以外でもマッチしたい場合は、[StringScanner#scan_until](../method/StringScanner/i/scan_until.md)などを使ってください。

```ruby title="例: scan, scan_until の動作の違い"
require 'strscan'

def case1
  s = StringScanner.new('test string')
  p s.scan(/t/)       # => "t"
  p s.scan(/\w+/)     # => "est"
  p s.scan(/string/)  # => nil
  p s.scan(/\s+/)     # => " "
  p s.scan(/string/)  # => "string"
end

def case2
  s = StringScanner.new('test string')
  p s.scan_until(/t/)       # => "t"
  p s.scan_until(/\w+/)     # => "est"
  p s.scan_until(/string/)  # => " string"
  p s.scan_until(/\s+/)     # => nil
  p s.scan_until(/string/)  # => nil
end

p "case1"
case1
p "case2"
case2
```

スキャンポインタの位置は文字単位でなくバイト単位となります。

```ruby title="例:"
# 次の行以降の内容を EUC-JP として保存して試してください
# vim:set fileencoding=euc-jp:
require 'strscan'
s = StringScanner.new("るびい") # 文字コードはEUC-JPとします
p s.exist?(/び/) # => 4
```

StringScanner は $~ $& $1 $2 …… などの正規表現関連変数をセットしません。代わりに [StringScanner#\[\]](../method/StringScanner/i/=5b=5d.md), [StringScanner#matched?](../method/StringScanner/i/matched=3f.md) などのマッチデータ関連メソッドを使ってください。

## Class Methods

- [must_C_version](../method/StringScanner/s/must_C_version.md)
- [new](../method/StringScanner/s/new.md)

## Instance Methods

- [<<](../method/StringScanner/i/=3c=3c.md)
- [concat](../method/StringScanner/i/concat.md)
- [\[\]](../method/StringScanner/i/=5b=5d.md)
- [beginning_of_line?](../method/StringScanner/i/beginning_of_line=3f.md)
- [bol?](../method/StringScanner/i/bol=3f.md)
- [charpos](../method/StringScanner/i/charpos.md)
- [check](../method/StringScanner/i/check.md)
- [check_until](../method/StringScanner/i/check_until.md)
- [clear](../method/StringScanner/i/clear.md)
- [terminate](../method/StringScanner/i/terminate.md)
- [empty?](../method/StringScanner/i/empty=3f.md)
- [eos?](../method/StringScanner/i/eos=3f.md)
- [exist?](../method/StringScanner/i/exist=3f.md)
- [get_byte](../method/StringScanner/i/get_byte.md)
- [getbyte](../method/StringScanner/i/getbyte.md)
- [getch](../method/StringScanner/i/getch.md)
- [inspect](../method/StringScanner/i/inspect.md)
- [match?](../method/StringScanner/i/match=3f.md)
- [matched](../method/StringScanner/i/matched.md)
- [matched?](../method/StringScanner/i/matched=3f.md)
- [matched_size](../method/StringScanner/i/matched_size.md)
- [matchedsize](../method/StringScanner/i/matchedsize.md)
- [peek](../method/StringScanner/i/peek.md)
- [peep](../method/StringScanner/i/peep.md)
- [pointer](../method/StringScanner/i/pointer.md)
- [pos](../method/StringScanner/i/pos.md)
- [pointer=](../method/StringScanner/i/pointer=3d.md)
- [pos=](../method/StringScanner/i/pos=3d.md)
- [post_match](../method/StringScanner/i/post_match.md)
- [pre_match](../method/StringScanner/i/pre_match.md)
- [reset](../method/StringScanner/i/reset.md)
- [rest](../method/StringScanner/i/rest.md)
- [rest?](../method/StringScanner/i/rest=3f.md)
- [rest_size](../method/StringScanner/i/rest_size.md)
- [restsize](../method/StringScanner/i/restsize.md)
- [scan](../method/StringScanner/i/scan.md)
- [scan_full](../method/StringScanner/i/scan_full.md)
- [scan_until](../method/StringScanner/i/scan_until.md)
- [search_full](../method/StringScanner/i/search_full.md)
- [skip](../method/StringScanner/i/skip.md)
- [skip_until](../method/StringScanner/i/skip_until.md)
- [string](../method/StringScanner/i/string.md)
- [string=](../method/StringScanner/i/string=3d.md)
- [unscan](../method/StringScanner/i/unscan.md)

## Constants

- [Id](../method/StringScanner/c/Id.md)
- [Version](../method/StringScanner/c/Version.md)
