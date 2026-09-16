# Ripper::Filter#state

### def state -> Ripper::Lexer::State
{: since="2.5.0"}

現在のトークンのスキャナ状態を返します。

このメソッドはイベントハンドラの中でのみ意味のある値を返します。イベントハンドラの中で self.state を実行してください。

値は `Ripper::EXPR_*` 定数のビット OR を表す Ripper::Lexer::State のインスタンスです。
