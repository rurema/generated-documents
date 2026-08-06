# Symbol#end_with?

### def end_with?(*suffixes)   -> bool

self の末尾が suffixes のいずれかであるとき true を返します。

(self.to_s.end_with?と同じです。)

- **param** `suffixes` -- パターンを表す文字列 (のリスト)

- **SEE** [Symbol#start_with?](../../../method/Symbol/i/start_with=3f.md)

- **SEE** [String#end_with?](../../../method/String/i/end_with=3f.md)

```ruby
p :hello.end_with?("ello")             #=> true

# returns true if one of the +suffixes+ matches.
p :hello.end_with?("heaven", "ello")   #=> true
p :hello.end_with?("heaven", "paradise") #=> false
```
