# Net::HTTP#continue_timeout

### def continue_timeout -> Integer | nil

「100 Continue」レスポンスを待つ秒数を返します。

この秒数待ってもレスポンスが来ない場合はリクエストボディを送信します。

デフォルトは nil (待たない)です。

- **SEE** [Net::HTTP#continue_timeout=](../../../method/Net=3a=3aHTTP/i/continue_timeout=3d.md)
