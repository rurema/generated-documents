# URI::Generic#route_from

### def route_from(src)    -> URI::Generic
### def -(src)             -> URI::Generic

与えられた URI を表す src からの相対パスを返します。

- **param** `src` -- 自身の相対パスを算出するための、ルートとなる Absolute URI を与えます。

```ruby title="例"
require 'uri'
p URI.parse('http://example.com/foo/bar.html') - 'http://example.com/'
# => #<URI::Generic:0x20100256 URL:foo/bar.html>
```
