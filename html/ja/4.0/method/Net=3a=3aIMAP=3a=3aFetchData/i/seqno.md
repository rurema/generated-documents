# Net::IMAP::FetchData#seqno

### def seqno -> Integer

メッセージの sequence number を返します。

[Net::IMAP#uid_fetch](../../../method/Net=3a=3aIMAP/i/uid_fetch.md)、[Net::IMAP#uid_store](../../../method/Net=3a=3aIMAP/i/uid_store.md)であっても
UID ではなく、sequence numberを返します。
