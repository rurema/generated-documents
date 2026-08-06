# Net::SMTP#debug_output=

### def set_debug_output(f) -> ()
### def debug_output=(f)

デバッグ出力の出力先を指定します。
このメソッドは深刻なセキュリティホールの原因となりえます。
デバッグ用にのみ利用してください。

- **param** `f` -- デバッグ出力先を [IO](../../../class/IO.md) (もしくは << というメソッドを持つクラス)で指定します
