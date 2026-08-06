# Net::IMAP#getacl

### def getacl(mailbox) -> [Net::IMAP::MailboxACLItem]

GETACL コマンドを送り、メールボックスの 
ACL(Access Control List) を取得します。

[Net::IMAP#getacl](../../../method/Net=3a=3aIMAP/i/getacl.md) で指定したメールボックスに対し何らかの権限を持つ各ユーザに対して
[Net::IMAP::MailboxACLItem](../../../class/Net=3a=3aIMAP=3a=3aMailboxACLItem.md) オブジェクトが作られ、その配列が返されます。

GETACL コマンドは [RFC:2086] で定義されています。
詳しくはそちらを参照してください。

- **param** `mailbox` -- メールボックス名(文字列)
- **SEE** [Net::IMAP::MailboxACLItem](../../../class/Net=3a=3aIMAP=3a=3aMailboxACLItem.md)
