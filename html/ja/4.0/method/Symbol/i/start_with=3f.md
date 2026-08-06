# Symbol#start_with?

### def start_with?(*prefixes)   -> bool

self の先頭が prefixes のいずれかであるとき true を返します。

(self.to_s.start_with?と同じです。)

- **param** `prefixes` -- パターンを表す文字列または正規表現 (のリスト)

- **SEE** [Symbol#end_with?](../../../method/Symbol/i/end_with=3f.md)

- **SEE** [String#start_with?](../../../method/String/i/start_with=3f.md)

```ruby
p :hello.start_with?("hell")             #=> true
p :hello.start_with?(/H/i)               #=> true

# returns true if one of the prefixes matches.
p :hello.start_with?("heaven", "hell")   #=> true
p :hello.start_with?("heaven", "paradise") #=> false
```
