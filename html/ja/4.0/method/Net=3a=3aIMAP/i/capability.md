# Net::IMAP#capability

### def capability -> [String]

CAPABILITY コマンドを送ってサーバがサポートしている機能(capabilities)のリストを文字列の配列として返します。

capability は IMAP に関連する RFC などで定義されています。

```ruby
p imap.capability
# => ["IMAP4REV1", "UNSELECT", "IDLE", "NAMESPACE", "QUOTA", ... ]
```
