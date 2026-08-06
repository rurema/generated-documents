# class WEBrick::HTTPAuth::BasicAuth < Object

HTTP の Basic 認証のためのクラスです。

```ruby title="例"
require 'webrick'
realm = "WEBrick's realm"
srv = WEBrick::HTTPServer.new({ :BindAddress => '127.0.0.1', :Port => 10080})

htpd = WEBrick::HTTPAuth::Htpasswd.new('dot.htpasswd')
htpd.set_passwd(nil, 'username', 'supersecretpass')

authenticator = WEBrick::HTTPAuth::BasicAuth.new(:UserDB => htpd, :Realm => realm)
srv.mount_proc('/basic_auth') {|req, res|
  authenticator.authenticate(req, res)
  res.body = "hoge"
}
srv.start # http://127.0.0.1:10080/basic_auth
```

## Class Methods

- [make_passwd](../method/WEBrick=3a=3aHTTPAuth=3a=3aBasicAuth/s/make_passwd.md)
- [new](../method/WEBrick=3a=3aHTTPAuth=3a=3aBasicAuth/s/new.md)

## Instance Methods

- [authenticate](../method/WEBrick=3a=3aHTTPAuth=3a=3aBasicAuth/i/authenticate.md)
- [challenge](../method/WEBrick=3a=3aHTTPAuth=3a=3aBasicAuth/i/challenge.md)
- [logger](../method/WEBrick=3a=3aHTTPAuth=3a=3aBasicAuth/i/logger.md)
- [realm](../method/WEBrick=3a=3aHTTPAuth=3a=3aBasicAuth/i/realm.md)
- [userdb](../method/WEBrick=3a=3aHTTPAuth=3a=3aBasicAuth/i/userdb.md)
