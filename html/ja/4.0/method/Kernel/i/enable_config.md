# Kernel#enable_config

### def enable_config(config, default) -> bool | String
### def enable_config(config, default){|config, default| ... } -> bool | String

configure のオプションを検査します。

configure のオプションに --enable-<config> が指定された場合は、真を返します。--disable-<config> が指定された場合は。偽を返します。どちらでもない場合は default を返します。

これはデバッグ情報などのカスタム定義を、追加するのに役立ちます。

- **param** `config` -- configure のオプションの名前を指定します。

- **param** `default` -- デフォルト値を返します。

```ruby title="例"
require 'mkmf'
if enable_config("debug")
   $defs.push("-DOSSL_DEBUG") unless $defs.include? "-DOSSL_DEBUG"
end
```
