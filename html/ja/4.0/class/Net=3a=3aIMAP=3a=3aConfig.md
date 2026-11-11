# class Net::IMAP::Config < Object

[Net::IMAP](../class/Net=3a=3aIMAP.md) の動作の設定を表すクラスです。

全体の設定は [Net::IMAP.config](../method/Net=3a=3aIMAP/s/config.md) または [Net::IMAP::Config.global](../method/Net=3a=3aIMAP=3a=3aConfig/s/global.md) で、接続ごとの設定は [Net::IMAP#config](../method/Net=3a=3aIMAP/i/config.md) で得られます。
[Net::IMAP.new](../method/Net=3a=3aIMAP/s/new.md) は、`config` で指定した設定(省略時は全体の設定)を継承元とする接続ごとの設定を作り、残りのキーワード引数をその初期値にします。

各設定は継承元([Net::IMAP::Config#parent](../method/Net=3a=3aIMAP=3a=3aConfig/i/parent.md) で得られます)を持ち、自身で値を設定していない属性は継承元の値を返します。
継承元の値は参照するたびに調べるので、継承元の値を変えると、それを継承している設定にもすぐに反映されます。
既定では、接続ごとの設定は全体の設定を、全体の設定は [Net::IMAP::Config.default](../method/Net=3a=3aIMAP=3a=3aConfig/s/default.md) を継承します。

```ruby title="継承の例"
require 'net/imap'

parent = Net::IMAP::Config.new(open_timeout: 10)
config = parent.new(idle_response_timeout: 3)
p config.open_timeout              # => 10
p config.inherited?(:open_timeout) # => true
parent.open_timeout = 20
p config.open_timeout              # => 20
p config.idle_response_timeout     # => 3
```

[Net::IMAP.new](../method/Net=3a=3aIMAP/s/new.md) の `config` に net-imap の版の数値(`0.4` など)を渡すと、その版の既定値を使えます。
版ごとの既定値は [Net::IMAP::Config.[]](../method/Net=3a=3aIMAP=3a=3aConfig/s/=5b=5d.md) で得られる凍結済みの設定で、その継承元は全体の設定です。
ただし `debug` は版ごとの既定値に含まれず、全体の設定から継承します。
版の数値のかわりに、次の名前も使えます。

- `:current` は、現在の版の既定値です。
- `:default` は、`:current` と同じです。[Net::IMAP::Config.default](../method/Net=3a=3aIMAP=3a=3aConfig/s/default.md) とは別のオブジェクトで、`debug` を全体の設定から継承します。
- `:next` は、次の版で予定している既定値です。
- `:future` は、将来の版で予定している既定値です。
- `:original` は、版の数値 `0.0` と同じで、設定の仕組みが入る前の動作に合わせた既定値です。

```ruby title="版ごとの既定値の例"
require 'net/imap'

p Net::IMAP::Config[0.3].sasl_ir                 # => false
p Net::IMAP::Config[0.4].sasl_ir                 # => true
p Net::IMAP::Config[0.4].responses_without_block # => :silence_deprecation_warning
p Net::IMAP::Config[0.4].frozen?                 # => true
Net::IMAP.debug = true
p Net::IMAP::Config[0.4].debug                   # => true
```

既にある設定の属性をある版の既定値にするには [Net::IMAP::Config#load_defaults](../method/Net=3a=3aIMAP=3a=3aConfig/i/load_defaults.md) を使います。

設定の変更はスレッド間で同期されません。

## Class Methods

- [\[\]](../method/Net=3a=3aIMAP=3a=3aConfig/s/=5b=5d.md)
- [default](../method/Net=3a=3aIMAP=3a=3aConfig/s/default.md)
- [global](../method/Net=3a=3aIMAP=3a=3aConfig/s/global.md)
- [new](../method/Net=3a=3aIMAP=3a=3aConfig/s/new.md)
- [version_defaults](../method/Net=3a=3aIMAP=3a=3aConfig/s/version_defaults.md)

## Instance Methods

- [debug](../method/Net=3a=3aIMAP=3a=3aConfig/i/debug.md)
- [debug?](../method/Net=3a=3aIMAP=3a=3aConfig/i/debug=3f.md)
- [debug=](../method/Net=3a=3aIMAP=3a=3aConfig/i/debug=3d.md)
- [enforce_logindisabled](../method/Net=3a=3aIMAP=3a=3aConfig/i/enforce_logindisabled.md)
- [enforce_logindisabled=](../method/Net=3a=3aIMAP=3a=3aConfig/i/enforce_logindisabled=3d.md)
- [freeze](../method/Net=3a=3aIMAP=3a=3aConfig/i/freeze.md)
- [idle_response_timeout](../method/Net=3a=3aIMAP=3a=3aConfig/i/idle_response_timeout.md)
- [idle_response_timeout=](../method/Net=3a=3aIMAP=3a=3aConfig/i/idle_response_timeout=3d.md)
- [inherited?](../method/Net=3a=3aIMAP=3a=3aConfig/i/inherited=3f.md)
- [inspect](../method/Net=3a=3aIMAP=3a=3aConfig/i/inspect.md)
- [to_s](../method/Net=3a=3aIMAP=3a=3aConfig/i/to_s.md)
- [load_defaults](../method/Net=3a=3aIMAP=3a=3aConfig/i/load_defaults.md)
- [max_response_size](../method/Net=3a=3aIMAP=3a=3aConfig/i/max_response_size.md)
- [max_response_size=](../method/Net=3a=3aIMAP=3a=3aConfig/i/max_response_size=3d.md)
- [new](../method/Net=3a=3aIMAP=3a=3aConfig/i/new.md)
- [open_timeout](../method/Net=3a=3aIMAP=3a=3aConfig/i/open_timeout.md)
- [open_timeout=](../method/Net=3a=3aIMAP=3a=3aConfig/i/open_timeout=3d.md)
- [parent](../method/Net=3a=3aIMAP=3a=3aConfig/i/parent.md)
- [parser_max_deprecated_uidplus_data_size](../method/Net=3a=3aIMAP=3a=3aConfig/i/parser_max_deprecated_uidplus_data_size.md)
- [parser_max_deprecated_uidplus_data_size=](../method/Net=3a=3aIMAP=3a=3aConfig/i/parser_max_deprecated_uidplus_data_size=3d.md)
- [parser_use_deprecated_uidplus_data](../method/Net=3a=3aIMAP=3a=3aConfig/i/parser_use_deprecated_uidplus_data.md)
- [parser_use_deprecated_uidplus_data=](../method/Net=3a=3aIMAP=3a=3aConfig/i/parser_use_deprecated_uidplus_data=3d.md)
- [pretty_print](../method/Net=3a=3aIMAP=3a=3aConfig/i/pretty_print.md)
- [reset](../method/Net=3a=3aIMAP=3a=3aConfig/i/reset.md)
- [responses_without_block](../method/Net=3a=3aIMAP=3a=3aConfig/i/responses_without_block.md)
- [responses_without_block=](../method/Net=3a=3aIMAP=3a=3aConfig/i/responses_without_block=3d.md)
- [sasl_ir](../method/Net=3a=3aIMAP=3a=3aConfig/i/sasl_ir.md)
- [sasl_ir?](../method/Net=3a=3aIMAP=3a=3aConfig/i/sasl_ir=3f.md)
- [sasl_ir=](../method/Net=3a=3aIMAP=3a=3aConfig/i/sasl_ir=3d.md)
- [to_h](../method/Net=3a=3aIMAP=3a=3aConfig/i/to_h.md)
- [update](../method/Net=3a=3aIMAP=3a=3aConfig/i/update.md)
- [with](../method/Net=3a=3aIMAP=3a=3aConfig/i/with.md)
