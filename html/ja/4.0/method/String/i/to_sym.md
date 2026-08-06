# String#to_sym

### def intern -> Symbol
### def to_sym -> Symbol

文字列に対応するシンボル値 [Symbol](../../../class/Symbol.md) を返します。

なお、このメソッドの逆にシンボルに対応する文字列を得るには
[Symbol#to_s](../../../method/Symbol/i/to_s.md) または [Symbol#id2name](../../../method/Symbol/i/id2name.md) を使います。

シンボル文字列にはヌルキャラクタ("\0")、空の文字列の使用も可能です。

```ruby title="例"
p "foo".intern                 # => :foo
p "foo".intern.to_s == "foo"   # => true
```
