# Ripper#lineno

### def lineno -> Integer | nil

現在のトークンの行番号を 1 から始まる数値で返します。

このメソッドはイベントハンドラの中でのみ意味のある値を返します。イベントハンドラの中で self.lineno を実行してください。
