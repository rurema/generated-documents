# Ripper::Filter#column

### def column -> Integer | nil

現在のトークンの桁番号を 0 から始まる数値で返します。

このメソッドはイベントハンドラの中でのみ意味のある値を返します。イベントハンドラの中で self.column を実行してください。
