# class CGI::Cookie < Array

クッキーを表すクラスです。

```text title="例"
cookie1 = CGI::Cookie.new("name", "value1", "value2", ...)
cookie1 = CGI::Cookie.new({"name" => "name", "value" => "value"})
cookie1 = CGI::Cookie.new({'name'      => 'name',
                           'value'     => ['value1', 'value2', ...],
                           'path'      => 'path',   # optional
                           'domain'    => 'domain', # optional
                           'expires'   => Time.now, # optional
                           'secure'    => true      # optional
                           'httponly'  => true      # optional
                          })

cgi.out({"cookie" => [cookie1, cookie2]}){ "string" }

name      = cookie1.name
values    = cookie1.value
path      = cookie1.path
domain    = cookie1.domain
expires   = cookie1.expires
secure    = cookie1.secure
httponly  = cookie1.httponly

cookie1.name      = 'name'
cookie1.value     = ['value1', 'value2', ...]
cookie1.path      = 'path'
cookie1.domain    = 'domain'
cookie1.expires   = Time.now + 30
cookie1.secure    = true
cookie1.httponly  = true
```

- **SEE** [rfc:2965]

## Class Methods

- [new](../method/CGI=3a=3aCookie/s/new.md)
- [parse](../method/CGI=3a=3aCookie/s/parse.md)

## Instance Methods

- [domain](../method/CGI=3a=3aCookie/i/domain.md)
- [domain=](../method/CGI=3a=3aCookie/i/domain=3d.md)
- [expires](../method/CGI=3a=3aCookie/i/expires.md)
- [expires=](../method/CGI=3a=3aCookie/i/expires=3d.md)
- [httopnly](../method/CGI=3a=3aCookie/i/httopnly.md)
- [httopnly=](../method/CGI=3a=3aCookie/i/httopnly=3d.md)
- [name](../method/CGI=3a=3aCookie/i/name.md)
- [name=](../method/CGI=3a=3aCookie/i/name=3d.md)
- [path](../method/CGI=3a=3aCookie/i/path.md)
- [path=](../method/CGI=3a=3aCookie/i/path=3d.md)
- [secure](../method/CGI=3a=3aCookie/i/secure.md)
- [secure=](../method/CGI=3a=3aCookie/i/secure=3d.md)
- [to_s](../method/CGI=3a=3aCookie/i/to_s.md)
- [value](../method/CGI=3a=3aCookie/i/value.md)
- [value=](../method/CGI=3a=3aCookie/i/value=3d.md)
