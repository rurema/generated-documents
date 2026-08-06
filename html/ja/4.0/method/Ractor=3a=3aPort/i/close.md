# Ractor::Port#close

### def close

Port を閉じます。

閉じられた Port に対して [Ractor::Port#send](../../../method/Ractor=3a=3aPort/i/send.md) による送信を試みた場合、 Ractor::ClosedError が発生します。
Port が閉じられる前に送信され、未受信のメッセージがある場合、その数ぶんだけ [Ractor::Port#receive](../../../method/Ractor=3a=3aPort/i/receive.md) を使って受信できます。

Port を作成した Ractor 以外で close を呼ぶことはできません。
