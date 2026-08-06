# class WEBrick::HTTPAuth::DigestAuth < Object

HTTP の Digest 認証のためのクラスです。

[RFC:2617] も参照してください。

```ruby title="例"
require 'webrick'
config = { :Realm => 'DigestAuth example realm' }

htdigest = WEBrick::HTTPAuth::Htdigest.new 'my_password_file'
htdigest.set_passwd config[:Realm], 'username', 'password'
htdigest.flush

config[:UserDB] = htdigest

digest_auth = WEBrick::HTTPAuth::DigestAuth.new config
```

サーブレットの initialize メソッドの中でこのクラスのインスタンスを作成しないようにしてください。デフォルトでは WEBrick はリクエストのたびにサーブレットのインスタンスを生成しますが、
[WEBrick::HTTPAuth::DigestAuth](../class/WEBrick=3a=3aHTTPAuth=3a=3aDigestAuth.md) のオブジェクトはリクエストをまたいで利用しなければならないためです。

## Class Methods

- [make_passwd](../method/WEBrick=3a=3aHTTPAuth=3a=3aDigestAuth/s/make_passwd.md)
- [new](../method/WEBrick=3a=3aHTTPAuth=3a=3aDigestAuth/s/new.md)

## Instance Methods

- [algorithm](../method/WEBrick=3a=3aHTTPAuth=3a=3aDigestAuth/i/algorithm.md)
- [authenticate](../method/WEBrick=3a=3aHTTPAuth=3a=3aDigestAuth/i/authenticate.md)
- [challenge](../method/WEBrick=3a=3aHTTPAuth=3a=3aDigestAuth/i/challenge.md)
- [qop](../method/WEBrick=3a=3aHTTPAuth=3a=3aDigestAuth/i/qop.md)
