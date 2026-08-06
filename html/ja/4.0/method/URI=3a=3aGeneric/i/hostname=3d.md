# URI::Generic#hostname=

### def hostname=(s)

自身の hostname を設定します。

このメソッドは引数に IPv6 アドレスを設定した場合は
[URI::Generic#host](../../../method/URI=3a=3aGeneric/i/host.md) にブラケットを追加した文字列を設定しますがそれ以外は同じ処理を行います。

```ruby
require 'uri'
u = URI("http://foo/bar")
p u.to_s                  # => "http://foo/bar"
u.hostname = "::1"
p u.to_s                  # => "http://[::1]/bar"
```

- **param** `s` -- 自身の hostname を表す文字列を指定します。

- **raise** `URI::InvalidComponentError` -- 不正な引数 s に対して発生します。

- **raise** `URI::InvalidURIError` -- host と registry を同時に設定した場合に発生します。
