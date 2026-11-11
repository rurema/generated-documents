# Net::IMAP::Config#max_response_size

### def max_response_size -> Integer | nil

サーバの応答 1 つの大きさの上限(バイト数)を返します。

nil は上限がないことを表します。
応答の大きさが上限に達するか、リテラルを読むと上限を超えるときは、[Net::IMAP::ResponseTooLargeError](../../../class/Net=3a=3aIMAP=3a=3aResponseTooLargeError.md) が発生して接続を閉じます。
この上限は応答 1 つごとのもので、応答の数や、記録される未処理の応答の量は制限しません。
既定値は 536870912(512 MiB)で、信頼できないサーバに接続するときはもっと小さい値にするべきです。
版ごとの既定値は、`0.4` 以前が nil、`0.5` 以降が 536870912 です。

値を変えてもすぐには反映されないことがあります。
受信スレッドが前の値で次の応答を待っていることがあるためで、[Net::IMAP#noop](../../../method/Net=3a=3aIMAP/i/noop.md) などで応答を受け取ると新しい値が使われます。


- **SEE** [Net::IMAP::Config#max_response_size=](../../../method/Net=3a=3aIMAP=3a=3aConfig/i/max_response_size=3d.md), [Net::IMAP#max_response_size](../../../method/Net=3a=3aIMAP/i/max_response_size.md)
