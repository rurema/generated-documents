# Net::IMAP#getquota

### def getquota(mailbox) -> [Net::IMAP::MailboxQuota]

GETQUOTA コマンドを送って指定したメールボックスの quota の情報を返します。

quota の情報は [Net::IMAP::MailboxQuota](../../../class/Net=3a=3aIMAP=3a=3aMailboxQuota.md) オブジェクトの配列で得られます。

詳しくは [RFC:2087] を見てください。
このコマンドは [Net::IMAP#capability](../../../method/Net=3a=3aIMAP/i/capability.md) の返り値を見ることで利用可能かどうか判断できます。

- **param** `mailbox` -- quota 情報を得たいメールボックス名
- **raise** `Net::IMAP::NoResponseError` -- 指定したメールボックスが quota root でない場合に発生します
