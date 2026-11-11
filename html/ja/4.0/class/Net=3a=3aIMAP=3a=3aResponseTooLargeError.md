# class Net::IMAP::ResponseTooLargeError < Net::IMAP::ResponseReadError

サーバからの応答 1 つの大きさが [Net::IMAP#max_response_size](../method/Net=3a=3aIMAP/i/max_response_size.md) を超えるときに発生する例外のクラスです。

応答の大きさが上限に達するか、リテラルを読むと上限を超えるときに発生し、接続は閉じられます。
上限については [Net::IMAP::Config#max_response_size](../method/Net=3a=3aIMAP=3a=3aConfig/i/max_response_size.md) を参照してください。

## Instance Methods

- [bytes_read](../method/Net=3a=3aIMAP=3a=3aResponseTooLargeError/i/bytes_read.md)
- [literal_size](../method/Net=3a=3aIMAP=3a=3aResponseTooLargeError/i/literal_size.md)
- [max_response_size](../method/Net=3a=3aIMAP=3a=3aResponseTooLargeError/i/max_response_size.md)
