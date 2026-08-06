# Net::IMAP#copy

### def copy(set, mailbox) -> Net::IMAP::TaggedResponse

COPY コマンドを送り、指定したメッセージを指定したメールボックスの末尾に追加します。

set でコピーするメッセージを指定します。
message sequence number(整数)、
message sequence numberの配列、もしくは [Range](../../../class/Range.md) で指定します。コピー元のメールボックスは
[Net::IMAP#examine](../../../method/Net=3a=3aIMAP/i/examine.md) もしくは [Net::IMAP#select](../../../method/Net=3a=3aIMAP/i/select.md) で指定したものを用います。
mailbox はコピー先のメールボックスです。

- **param** `set` -- コピーするメッセージの message sequence number
- **param** `mailbox` -- コピー先のメールボックス(文字列)
- **SEE** [Net::IMAP#uid_copy](../../../method/Net=3a=3aIMAP/i/uid_copy.md)
