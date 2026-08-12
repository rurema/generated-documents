# OpenSSL::X509::ExtensionFactory#config=

### def config=(config)

自身にコンフィグファイルオブジェクトを設定します。

```ruby title="例"
require 'openssl'
factory.config = OpenSSL::Config.load(OpenSSL::Config::DEFAULT_CONFIG_FILE)
```

- **param** `config` -- 設定ファイル([OpenSSL::Config](../../../class/OpenSSL=3a=3aConfig.md) オブジェクト)
