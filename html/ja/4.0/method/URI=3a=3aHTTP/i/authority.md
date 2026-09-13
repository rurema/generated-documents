# URI::HTTP#authority

### def authority -> String

[RFC:3986] の Section 3.2 で定義されている authority を文字列で返します。

port が [URI::Generic.default_port](../../../method/URI=3a=3aGeneric/s/default_port.md) と同じ場合は host だけを返します。そうでない場合は "host:port" という形式の文字列を返します。

```ruby title="例"
require 'uri'
p URI::HTTP.build(host: 'www.example.com', path: '/foo/bar').authority
# => "www.example.com"
p URI::HTTP.build(host: 'www.example.com', port: 8000, path: '/foo/bar').authority
# => "www.example.com:8000"
p URI::HTTP.build(host: 'www.example.com', port: 80, path: '/foo/bar').authority
# => "www.example.com"
```

- **SEE** [URI::HTTP#origin](../../../method/URI=3a=3aHTTP/i/origin.md), [URI::Generic.default_port](../../../method/URI=3a=3aGeneric/s/default_port.md)
