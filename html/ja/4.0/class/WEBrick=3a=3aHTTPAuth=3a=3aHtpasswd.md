# class WEBrick::HTTPAuth::Htpasswd < Object

Apache の htpasswd 互換のクラスです。
.htpasswd ファイルを新しく作成することも出来ます。
htpasswd -m (MD5) や -s (SHA) で作成された .htpasswd ファイルには対応していません。

```ruby title="例"
require 'webrick'
include WEBrick
htpd = HTTPAuth::Htpasswd.new('dot.htpasswd')
htpd.set_passwd(nil, 'username', 'supersecretpass')
htpd.flush
htpd2 = HTTPAuth::Htpasswd.new('dot.htpasswd')
pass = htpd2.get_passwd(nil, 'username', false)
p pass == 'supersecretpass'.crypt(pass[0,2])
```

## Class Methods

- [new](../method/WEBrick=3a=3aHTTPAuth=3a=3aHtpasswd/s/new.md)

## Instance Methods

- [delete_passwd](../method/WEBrick=3a=3aHTTPAuth=3a=3aHtpasswd/i/delete_passwd.md)
- [each](../method/WEBrick=3a=3aHTTPAuth=3a=3aHtpasswd/i/each.md)
- [flush](../method/WEBrick=3a=3aHTTPAuth=3a=3aHtpasswd/i/flush.md)
- [get_passwd](../method/WEBrick=3a=3aHTTPAuth=3a=3aHtpasswd/i/get_passwd.md)
- [reload](../method/WEBrick=3a=3aHTTPAuth=3a=3aHtpasswd/i/reload.md)
- [set_passwd](../method/WEBrick=3a=3aHTTPAuth=3a=3aHtpasswd/i/set_passwd.md)
