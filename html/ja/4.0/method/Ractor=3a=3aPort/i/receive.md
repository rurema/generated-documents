# Ractor::Port#receive

### def receive -> object

Port に送信されたメッセージを受信します。

メッセージキューが空の場合はブロックします。

- **raise** `Ractor::ClosedError` -- Port が閉じられている場合に発生します。
