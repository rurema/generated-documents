# Symbol#next

### def succ -> Symbol
### def next -> Symbol

シンボルに対応する文字列の「次の」文字列に対応するシンボルを返します。

(self.to_s.next.intern と同じです。)

```ruby
p :a.next # => :b
p :foo.next # => :fop
```

- **SEE** [String#succ](../../../method/String/i/succ.md)
