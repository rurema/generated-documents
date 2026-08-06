# NilClass#rationalize

### def rationalize      -> Rational
### def rationalize(eps) -> Rational

0/1 を返します。

- **param** `eps` -- 許容する誤差

引数 eps は常に無視されます。

```ruby title="例"
p nil.rationalize    # => (0/1)
p nil.rationalize(100) # => (0/1)
p nil.rationalize(0.1) # => (0/1)
```
