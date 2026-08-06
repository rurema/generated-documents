# Symbol#id2name

### def id2name -> String
### def to_s -> String

シンボルに対応する文字列を返します。

逆に、文字列に対応するシンボルを得るには
[String#intern](../../../method/String/i/intern.md) を使います。

```ruby
p :foo.id2name  # => "foo"
p :foo.id2name.intern == :foo  # => true
```

返り値の文字列を破壊的に変更すると、Warning[:deprecated] が真のとき「この文字列は将来のバージョンで freeze される」という趣旨の警告が出るようになりました。将来のバージョンでは返り値が freeze される予定です。
freeze された文字列が必要なときは [Symbol#name](../../../method/Symbol/i/name.md) を使用してください。

```ruby
s = :foo.to_s
s << "bar"
# warning: string returned by :foo.to_s will be frozen in the future
```


- **SEE** [String#intern](../../../method/String/i/intern.md)
- **SEE** [Symbol#name](../../../method/Symbol/i/name.md)
