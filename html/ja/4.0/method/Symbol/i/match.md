# Symbol#match

### def match(other) -> MatchData | nil
{: since="1.9.1"}

正規表現 other とのマッチを行います。

(self.to_s.match(other) と同じです。)

- **param** `other` -- 比較対象のシンボルを指定します。

- **return** -- マッチが成功すれば MatchData オブジェクトを、そうでなければ nil を返します。

```ruby
p :foo.match(/foo/)    # => #<MatchData "foo">
p :foobar.match(/bar/) # => #<MatchData "bar">
p :foo.match(/bar/)    # => nil
```

- **SEE** [String#match](../../../method/String/i/match.md)
- **SEE** [Symbol#match?](../../../method/Symbol/i/match=3f.md)
