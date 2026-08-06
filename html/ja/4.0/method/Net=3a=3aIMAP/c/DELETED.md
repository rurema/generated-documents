# Net::IMAP::DELETED

### const DELETED -> Symbol

「:Deleted」というシンボルを返します。

メッセージが削除されていることを意味します。
EXPUNGE で完全に除去されます。

フラグメッセージ属性として用いられます
([Net::IMAP::FetchData#attr](../../../method/Net=3a=3aIMAP=3a=3aFetchData/i/attr.md))。

詳しくは [RFC:2060] を参照してください。
