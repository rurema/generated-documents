# Net::IMAP#select

### def select(mailbox) -> Net::IMAP::TaggedResponse

SELECT コマンドを送り、指定したメールボックスを処理対象のメールボックスにします。

このコマンドが成功すると、クライアントの状態が「selected」になります。

このコマンドを実行した直後に [Net::IMAP#responses](../../../method/Net=3a=3aIMAP/i/responses.md)["EXISTS"].last
を調べると、メールボックス内のメールの数がわかります。
また、[Net::IMAP#responses](../../../method/Net=3a=3aIMAP/i/responses.md)["RECENT"].lastで、最新のメールの数がわかります。
これらの値はセッション中に変わりうることに注意してください。
[Net::IMAP#add_response_handler](../../../method/Net=3a=3aIMAP/i/add_response_handler.md) を使うとそのような更新情報を即座に取得できます。

- **param** `mailbox` -- 処理対象としたいメールボックスの名前(文字列)
- **raise** `Net::IMAP::NoResponseError` -- mailboxが存在しない等の理由でコマンドの実行に失敗
       した場合に発生します。
