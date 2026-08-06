# URI::Generic#hostname

### def hostname -> String | nil

自身の hostname を文字列で返します。また、[URI::Generic#host](../../../method/URI=3a=3aGeneric/i/host.md) が設定されていない場合は nil を返します。

このメソッドは [URI::Generic#host](../../../method/URI=3a=3aGeneric/i/host.md) に IPv6 アドレスが設定されていた場合はブラケットを削除した文字列を返しますがそれ以外は同じ文字列を返します。

```ruby
require 'uri'
u = URI("http://[::1]/bar")
p u.hostname      # => "::1"
p u.host          # => "[::1]"
```
