# Net::IMAP#move

### def move(set, mailbox) -> Net::IMAP::TaggedResponse

MOVEコマンドを送り、set で指定したメッセージを mailbox の末尾に移動させます。

set はmessage sequence number(整数)、
message sequence numberの配列、もしくは [Range](../../../class/Range.md) で指定します。

コピー元のメールボックスは
[Net::IMAP#examine](../../../method/Net=3a=3aIMAP/i/examine.md) もしくは [Net::IMAP#select](../../../method/Net=3a=3aIMAP/i/select.md) で指定したものを用います。

- **param** `set` -- 移動するメッセージの message sequence number(整数、整数の配列、整数の Range)
- **param** `mailbox` -- 移動先のメールボックス(文字列)
- **SEE** [Net::IMAP#uid_move](../../../method/Net=3a=3aIMAP/i/uid_move.md), [RFC:6851]
