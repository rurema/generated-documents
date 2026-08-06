# Ripper::Filter#on_XXX

### def on_XXX(token, data) -> object

各種スキャナイベントを実行します。

実際には on_XXX というメソッドは存在しません。「XXX」の部分を
[Ripper::SCANNER_EVENTS](../../../method/Ripper/c/SCANNER_EVENTS.md) にあるスキャナイベントに読み替えてください。

- **param** `token` -- 現在のトークンが指定されます。

- **param** `data` -- 前のイベントハンドラの戻り値です。最初のイベントの場合は
            [Ripper::Filter#parse](../../../method/Ripper=3a=3aFilter/i/parse.md) の引数になります。

オーバライドしなかった場合は on_default が実行されます。

このメソッドの戻り値は次のイベントハンドラの data 引数に渡されます。

- **SEE** [Ripper::Filter#parse](../../../method/Ripper=3a=3aFilter/i/parse.md), [Ripper::Filter#on_default](../../../method/Ripper=3a=3aFilter/i/on_default.md), [Ripper::SCANNER_EVENTS](../../../method/Ripper/c/SCANNER_EVENTS.md)
