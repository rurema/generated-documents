# Net::IMAP#examine

### def examine(mailbox) -> Net::IMAP::TaggedResponse

EXAMINE コマンドを送り、指定したメールボックスを処理対象のメールボックスにします。

[Net::IMAP#select](../../../method/Net=3a=3aIMAP/i/select.md) と異なりセッション中はメールボックスが読み取り専用となります。それ以外は select と同じです。

- **param** `mailbox` -- 処理対象としたいメールボックスの名前(文字列)
- **raise** `Net::IMAP::NoResponseError` -- mailboxが存在しない等の理由でコマンドの実行に失敗した場合に発生します。
