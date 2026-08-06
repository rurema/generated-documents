# Net::IMAP#close

### def close -> Net::IMAP::TaggedResponse

CLOSE コマンドを送り、処理中のメールボックスを閉じます。

このコマンドによって、どのメールボックスも選択されていない状態に移行します。
そして \Deleted フラグが付けられたメールがすべて削除されます。
