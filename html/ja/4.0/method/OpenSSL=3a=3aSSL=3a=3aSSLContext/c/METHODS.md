# OpenSSL::SSL::SSLContext::METHODS

### const METHODS -> [Symbol]

利用可能なメソッド(プロトコル)を [Symbol](../../../class/Symbol.md) の配列で返します。

```ruby
require 'openssl'
p OpenSSL::SSL::SSLContext::METHODS
# => [:TLSv1, :TLSv1_server, :TLSv1_client, :SSLv2, :SSLv2_server, ...]
```
