# class Net::IMAP::ContinuationRequest < Struct

IMAP の continuation request (命令継続要求) を表すクラスです。

通常このクラスを直接扱うことはありません。
レスポンスハンドラ([Net::IMAP#add_response_handler](../method/Net=3a=3aIMAP/i/add_response_handler.md))
に渡されます。

詳しくは [RFC:2060] の 7.5 を参照してください。

## Instance Methods

- [data](../method/Net=3a=3aIMAP=3a=3aContinuationRequest/i/data.md)
- [raw_data](../method/Net=3a=3aIMAP=3a=3aContinuationRequest/i/raw_data.md)
