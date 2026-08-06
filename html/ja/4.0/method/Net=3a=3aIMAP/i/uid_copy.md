# Net::IMAP#uid_copy

### def uid_copy(set, mailbox) -> Net::IMAP::TaggedResponse

UID COPY コマンドを送り、指定したメッセージを指定したメールボックスの末尾に追加します。

set でコピーするメッセージを指定します。
UID (整数)、
UID の配列、もしくは [Range](../../../class/Range.md) で指定します。コピー元のメールボックスは
[Net::IMAP#examine](../../../method/Net=3a=3aIMAP/i/examine.md) もしくは [Net::IMAP#select](../../../method/Net=3a=3aIMAP/i/select.md) で指定したものを用います。
mailbox はコピー先のメールボックスです。

- **param** `set` -- コピーするメッセージの UID
- **param** `mailbox` -- コピー先のメールボックス(文字列)
- **SEE** [Net::IMAP#copy](../../../method/Net=3a=3aIMAP/i/copy.md)
