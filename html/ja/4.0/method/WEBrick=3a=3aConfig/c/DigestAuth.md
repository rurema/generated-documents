# WEBrick::Config::DigestAuth

### const DigestAuth -> Hash

[WEBrick::HTTPAuth::DigestAuth](../../../class/WEBrick=3a=3aHTTPAuth=3a=3aDigestAuth.md) の設定のデフォルト値を保持したハッシュです。

```ruby
require 'webrick'
WEBrick::Config::DigestAuth = {
  :Algorithm            => 'MD5-sess', # or 'MD5'
  :Domain               => nil,        # an array includes domain names.
  :Qop                  => [ 'auth' ], # 'auth' or 'auth-int' or both.
  :UseOpaque            => true,
  :UseNextNonce         => false,
  :CheckNc              => false,
  :UseAuthenticationInfoHeader => true,
  :AutoReloadUserDB     => true,
  :NonceExpirePeriod    => 30*60,
  :NonceExpireDelta     => 60,
  :InternetExplorerHack => true,
  :OperaHack            => true,
}
```
