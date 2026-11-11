# Net::IMAP::ResponseTooLargeError#literal_size

### def literal_size -> Integer | nil

リテラルを読む前に上限を超えると分かったときは、そのリテラルの大きさ(バイト数)を返します。

それ以外のときは nil を返します。
