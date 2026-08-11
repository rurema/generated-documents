# Win32::Resolv?.get_hosts_path

### module_function def get_hosts_path -> String | nil

hosts ファイルのパスを返します。ファイルが存在しない場合は nil を返します。

```ruby title="例"
require "win32/resolv"
p Win32::Resolv.get_hosts_path # => "C:\Windows\System32\drivers\etc\hosts"
```
