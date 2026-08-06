# class WEBrick::HTTPAuth::Htdigest < Object

Apache の htdigest 互換のクラス。

```ruby title="例"
require 'webrick'
include WEBrick
htd = HTTPAuth::Htdigest.new('dot.htdigest')
htd.set_passwd('realm', 'username', 'supersecretpass')
htd.flush
htd2 = HTTPAuth::Htdigest.new('dot.htdigest')
p htd2.get_passwd('realm', 'username', false) == '65fe03e5b0a199462186848cc7fda42b'
```

## Class Methods

- [new](../method/WEBrick=3a=3aHTTPAuth=3a=3aHtdigest/s/new.md)

## Instance Methods

- [delete_passwd](../method/WEBrick=3a=3aHTTPAuth=3a=3aHtdigest/i/delete_passwd.md)
- [each](../method/WEBrick=3a=3aHTTPAuth=3a=3aHtdigest/i/each.md)
- [flush](../method/WEBrick=3a=3aHTTPAuth=3a=3aHtdigest/i/flush.md)
- [get_passwd](../method/WEBrick=3a=3aHTTPAuth=3a=3aHtdigest/i/get_passwd.md)
- [reload](../method/WEBrick=3a=3aHTTPAuth=3a=3aHtdigest/i/reload.md)
- [set_passwd](../method/WEBrick=3a=3aHTTPAuth=3a=3aHtdigest/i/set_passwd.md)
