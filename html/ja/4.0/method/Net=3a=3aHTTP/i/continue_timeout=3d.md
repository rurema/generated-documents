# Net::HTTP#continue_timeout=

### def continue_timeout=(seconds)

「100 Continue」レスポンスを待つ秒数を指定します。

この秒数待ってもレスポンスが来ない場合はリクエストボディを送信します。

デフォルトは nil (待たない)です。

- **param** `seconds` -- 秒数
- **SEE** [Net::HTTP#continue_timeout](../../../method/Net=3a=3aHTTP/i/continue_timeout.md)
