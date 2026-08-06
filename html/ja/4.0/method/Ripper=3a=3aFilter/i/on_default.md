# Ripper::Filter#on_default

### def on_default(event, token, data) -> object

イベントハンドラが未定義のイベントが実行された場合に実行されるイベントハンドラです。

- **param** `event` -- 実行されたイベントを :on_XXX 形式のシンボルで指定されます。

- **param** `token` -- 現在のトークンが指定されます。

- **param** `data` -- 前のイベントハンドラの戻り値です。最初のイベントの場合は
            [Ripper::Filter#parse](../../../method/Ripper=3a=3aFilter/i/parse.md) の引数になります。

このメソッドの戻り値は次のイベントハンドラの data 引数に渡されます。
on_default をオーバライドしなかった場合は data 引数をそのまま返します。

- **SEE** [Ripper::Filter#parse](../../../method/Ripper=3a=3aFilter/i/parse.md), [Ripper::Filter#on_XXX](../../../method/Ripper=3a=3aFilter/i/on_XXX.md)
