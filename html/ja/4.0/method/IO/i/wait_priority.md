# IO#wait_priority

### def wait_priority(timeout = nil) -> bool | self | nil

self が優先データを受信して読み込み可能になるまでブロックし、読み込み可能になったら真値を返します。

優先データ(緊急データ)は [Socket::Constants::MSG_OOB](../../../method/Socket=3a=3aConstants/c/MSG_OOB.md) フラグを用いて送受信され、通常はストリーム型のソケットに限られます。

より詳しくは、一度ブロックしてから読み込み可能になった場合には
self を返します。
内部のバッファにデータがある場合にはブロックせずに true を返します。

timeout を指定した場合は、指定秒数経過するまでブロックし、タイムアウトした場合は nil を返します。

- **param** `timeout` -- タイムアウトまでの秒数を指定します。
             nil を指定すると読み込み可能になるまで待ち続けます。

- **SEE** [IO#wait_readable](../../../method/IO/i/wait_readable.md), [IO#wait_writable](../../../method/IO/i/wait_writable.md)
