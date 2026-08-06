# class Net::IMAP::ResponseError < Net::IMAP::Error

サーバからのレスポンスがエラーを示している場合に発生する例外のクラスです。

実際にはこれを継承した
  - [Net::IMAP::NoResponseError](../class/Net=3a=3aIMAP=3a=3aNoResponseError.md)
  - [Net::IMAP::BadResponseError](../class/Net=3a=3aIMAP=3a=3aBadResponseError.md)
  - [Net::IMAP::ByeResponseError](../class/Net=3a=3aIMAP=3a=3aByeResponseError.md)
これらのクラスの例外が発生します。

## Instance Methods

- [response](../method/Net=3a=3aIMAP=3a=3aResponseError/i/response.md)
- [response=](../method/Net=3a=3aIMAP=3a=3aResponseError/i/response=3d.md)
