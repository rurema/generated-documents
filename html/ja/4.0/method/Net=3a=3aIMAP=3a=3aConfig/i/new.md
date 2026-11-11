# Net::IMAP::Config#new

### def new(**attrs) -> Net::IMAP::Config

`self` を継承元とする新しい設定を作り、`attrs` で属性の値を設定して返します。

`Net::IMAP::Config.new(self, **attrs)` と同じです。

- **param** `attrs` -- 設定する属性の名前と値
- **raise** `ArgumentError` -- `attrs` に未知の属性名がある場合や、属性に不正な値を指定した場合に発生します。


- **SEE** [Net::IMAP::Config.new](../../../method/Net=3a=3aIMAP=3a=3aConfig/s/new.md), [Net::IMAP::Config#with](../../../method/Net=3a=3aIMAP=3a=3aConfig/i/with.md)
