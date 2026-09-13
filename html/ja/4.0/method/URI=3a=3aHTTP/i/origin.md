# URI::HTTP#origin

### def origin -> String

[RFC:6454] で定義されている origin を文字列で返します。

"scheme://authority" という形式の文字列になります。

```ruby title="例"
require 'uri'
p URI::HTTP.build(host: 'www.example.com', path: '/foo/bar').origin
# => "http://www.example.com"
p URI::HTTP.build(host: 'www.example.com', port: 8000, path: '/foo/bar').origin
# => "http://www.example.com:8000"
p URI::HTTPS.build(host: 'www.example.com', path: '/foo/bar').origin
# => "https://www.example.com"
```

- **SEE** [URI::HTTP#authority](../../../method/URI=3a=3aHTTP/i/authority.md)
