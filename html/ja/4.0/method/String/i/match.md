# String#match

### def match(regexp, pos = 0) -> MatchData | nil
### def match(regexp, pos = 0) {|m| ... } -> object

regexp.match(self, pos) と同じです。
regexp が文字列の場合は、正規表現にコンパイルします。
詳しくは [Regexp#match](../../../method/Regexp/i/match.md) を参照してください。

```ruby title="例: regexp のみの場合"
p 'hello'.match('(.)\1')    # => #<MatchData "ll" 1:"l">
p 'hello'.match('(.)\1')[0] # => "ll"
p 'hello'.match(/(.)\1/)[0] # => "ll"
p 'hello'.match('xx')       # => nil
```

```ruby title="例: regexp, pos を指定した場合"
p 'hoge hige hege bar'.match('h.ge', 0)   # => #<MatchData "hoge">
p 'hoge hige hege bar'.match('h.ge', 1)   # => #<MatchData "hige">
```

```ruby title="例: ブロックを指定した場合"
p 'hello'.match('(.)\1'){|e|"match #{$1}"}  # => "match l"
'hello'.match('xx'){|e|"match #{$1}"}     # マッチしないためブロックは実行されない
```

- **SEE** [Regexp#match](../../../method/Regexp/i/match.md), [Symbol#match](../../../method/Symbol/i/match.md)
