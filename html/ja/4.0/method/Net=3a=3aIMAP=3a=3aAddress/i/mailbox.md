# Net::IMAP::Address#mailbox

### def mailbox -> String | nil

メールアドレスのメールボックス名を返します。

これが nil ならばそれは [RFC:822] group の終わりを意味します。
これが nil でなく、[Net::IMAP::Address#mailbox](../../../method/Net=3a=3aIMAP=3a=3aAddress/i/mailbox.md) が nil ならば、
[RFC:822] のグループ名を表します。
どれでもなければ、[RFC:822] の local-part を表します。

通常は、メールアドレスの「@」の手前を返します。
