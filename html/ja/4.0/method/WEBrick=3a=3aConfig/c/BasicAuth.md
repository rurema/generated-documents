# WEBrick::Config::BasicAuth

### const BasicAuth -> Hash

[WEBrick::HTTPAuth::BasicAuth](../../../class/WEBrick=3a=3aHTTPAuth=3a=3aBasicAuth.md) の設定のデフォルト値を保持したハッシュです。

```ruby
require 'webrick'
WEBrick::Config::BasicAuth = {
  :AutoReloadUserDB     => true,
}
```
