# Win32::Resolv?.get_resolv_info

### module_function def get_resolv_info -> [[String], [String]]

ドメイン名とネームサーバを配列の配列で返します。

```ruby title="例"
require "win32/resolv"
p Win32::Resolv.get_resolv_info #=> [["my.example.com"], ["192.168.1.1"]]
```

設定されていない情報は nil になります。

```ruby
# ドメイン名が設定されていない場合。
require "win32/resolv"
p Win32::Resolv.get_resolv_info #=> [nil, ["192.168.1.1"]]
```
