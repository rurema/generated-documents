# Net::IMAP#uid_move

### def uid_move(set, mailbox) -> Net::IMAP::TaggedResponse

MOVEコマンドを送り、set でUIDで指定したメッセージを mailbox の末尾に移動させます。

set には UID、UID の配列、もしくは
[Range](../../../class/Range.md) オブジェクトを渡します。

コピー元のメールボックスは
[Net::IMAP#examine](../../../method/Net=3a=3aIMAP/i/examine.md) もしくは [Net::IMAP#select](../../../method/Net=3a=3aIMAP/i/select.md) で指定したものを用います。

- **param** `set` -- 移動するメッセージのUID(整数、整数の配列、整数の Range)
- **param** `mailbox` -- 移動先のメールボックス(文字列)
- **SEE** [Net::IMAP#move](../../../method/Net=3a=3aIMAP/i/move.md), [RFC:6851]
