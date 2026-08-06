# class OpenSSL::Config < Object

OpenSSL の設定ファイルを表すクラスです。

OpenSSL の設定ファイルは、キーと文字列を対応付けた単純な構造をしています。
また、キーはセクションによってグループ分けされています。
どのセクションにも属さないグローバルなキーを作ることもできます。

```ruby title="デフォルトの設定ファイルを読み込む例"
require 'openssl'
conf = OpenSSL::Config.load(OpenSSL::Config::DEFAULT_CONFIG_FILE)
p conf.sections # => ["req_distinguished_name", "req_attributes", "proxy_cert_ext", "policy_anything", "CA_default", ...]
p conf.get_value("", "HOME") # => "." 
p conf.get_value("CA_default", "default_days") # => "365" 
```

## Class Methods

- [load](../method/OpenSSL=3a=3aConfig/s/load.md)
- [new](../method/OpenSSL=3a=3aConfig/s/new.md)
- [parse](../method/OpenSSL=3a=3aConfig/s/parse.md)

## Instance Methods

- [\[\]](../method/OpenSSL=3a=3aConfig/i/=5b=5d.md)
- [section](../method/OpenSSL=3a=3aConfig/i/section.md)
- [\[\]=](../method/OpenSSL=3a=3aConfig/i/=5b=5d=3d.md)
- [add_value](../method/OpenSSL=3a=3aConfig/i/add_value.md)
- [each](../method/OpenSSL=3a=3aConfig/i/each.md)
- [get_value](../method/OpenSSL=3a=3aConfig/i/get_value.md)
- [sections](../method/OpenSSL=3a=3aConfig/i/sections.md)
- [to_s](../method/OpenSSL=3a=3aConfig/i/to_s.md)
- [value](../method/OpenSSL=3a=3aConfig/i/value.md)

## Constants

- [DEFAULT_CONFIG_FILE](../method/OpenSSL=3a=3aConfig/c/DEFAULT_CONFIG_FILE.md)
