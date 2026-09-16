# Ripper.lex_state_name

### def Ripper.lex_state_name(state) -> String
{: since="2.5.0"}

state で指定したスキャナ状態を表す文字列表現を返します。

- **param** `state` -- スキャナ状態を表す整数を指定します。[Ripper#state](../../../method/Ripper/i/state.md) などで得られる値です。

state が複数の状態のビット OR である場合は、それぞれの状態名を `"|"` でつないだ文字列を返します。
