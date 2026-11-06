# Net::IMAP#examine

### def examine(mailbox, condstore: false) -> Net::IMAP::TaggedResponse

EXAMINE コマンドを送り、指定したメールボックスを処理対象のメールボックスにします。

[Net::IMAP#select](../../../method/Net=3a=3aIMAP/i/select.md) と異なりセッション中はメールボックスが読み取り専用となります。それ以外は select と同じです。

- **param** `mailbox` -- 処理対象としたいメールボックスの名前(文字列)
- **param** `condstore` -- 真を指定すると CONDSTORE 拡張([RFC:7162])を有効にします。メールボックスが mod-sequence の保持に対応していれば HIGHESTMODSEQ 応答コードが untagged な応答として送られ、以後の FETCH の応答に mod-sequence が含まれます。
- **raise** `Net::IMAP::NoResponseError` -- mailboxが存在しない等の理由でコマンドの実行に失敗した場合に発生します。
