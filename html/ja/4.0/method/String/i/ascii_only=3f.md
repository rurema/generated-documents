# String#ascii_only?

### def ascii_only?  -> bool

文字列がASCII文字のみで構成されている場合に true を返します。そうでない場合は
false を返します。

```ruby title="例"
'abc123'.ascii_only?        # => true
''.ascii_only?              # => true
'日本語'.ascii_only?        # => false
'日本語abc123'.ascii_only?  # => false
```
