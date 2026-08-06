# Net::IMAP::Address#host

### def host -> String | nil

メールアドレスのホスト名を返します。

nil は [RFC:822] のグループ文法に対応します。
これについては [Net::IMAP::Address#mailbox](../../../method/Net=3a=3aIMAP=3a=3aAddress/i/mailbox.md) も参照してください。
そうでない場合は [RFC:822] のドメイン名を表します。

通常は、メールアドレスの「@」の後ろのドメイン名を返します。
