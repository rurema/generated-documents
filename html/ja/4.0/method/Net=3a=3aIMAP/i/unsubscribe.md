# Net::IMAP#unsubscribe

### def unsubscribe(mailbox) -> Net::IMAP::TaggedResponse

UNSUBSCRIBE コマンドを送り、指定したメールボックスを
"active" もしくは "subscribe" なメールボックスの集合から削除します。

- **param** `mailbox` -- 削除するするメールボックスの名前(文字列)
- **raise** `Net::IMAP::NoResponseError` -- 指定した名前のメールボックスを削除できなかった場合に発生します。
       指定した名前のメールボックスが active/subscribe でなかった場合などに発生します。
