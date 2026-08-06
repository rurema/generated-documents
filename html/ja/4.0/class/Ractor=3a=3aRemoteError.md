# class Ractor::RemoteError < Ractor::Error

他の Ractor で発生した例外を、その結果を待っている Ractor に伝えるために発生します。

もとの例外は [Exception#cause](../method/Exception/i/cause.md) で取得できます。

```ruby
r = Ractor.new { raise "boom" }
begin
  r.value
rescue Ractor::RemoteError => e
  p e.message       # => "thrown by remote Ractor."
  p e.cause.message # => "boom"
end
```

## Instance Methods

- [ractor](../method/Ractor=3a=3aRemoteError/i/ractor.md)
