# URI::Generic.component

### def URI::Generic.component     -> [Symbol]

URI の構成要素を表すシンボルの配列を返します。

```ruby
require 'uri'
p URI::Generic.component
p URI::MailTo.component
  
# => [:scheme, :userinfo, :host, :port, :registry, :path, :opaque, :query, :fragment]
# => [:scheme, :to, :headers]
```
