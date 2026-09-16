# Ripper#state

### def state -> Integer | nil
{: since="2.5.0"}

現在のトークンのスキャナ状態を、`Ripper::EXPR_*` 定数のビット OR を表す整数で返します。

このメソッドはイベントハンドラの中でのみ意味のある値を返します。イベントハンドラの中で self.state を実行してください。
