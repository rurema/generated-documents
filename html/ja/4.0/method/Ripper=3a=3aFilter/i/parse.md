# Ripper::Filter#parse

### def parse(init = nil) -> object

自身の持つ Ruby プログラムの解析を開始します。各種イベントハンドラで処理を行った結果を返します。

- **param** `init` -- 任意の値を指定できます。この値がイベントハンドラに渡されていきます。

引数 init を初期値としてイベントハンドラに渡されていきます。各種イベントハンドラの戻り値は次のイベントハンドラに渡されます。
[Enumerable#inject](../../../method/Enumerable/i/inject.md) のように、最終的な結果を戻り値として返します。

- **SEE** [Ripper::Filter#on_default](../../../method/Ripper=3a=3aFilter/i/on_default.md), [Ripper::Filter#on_XXX](../../../method/Ripper=3a=3aFilter/i/on_XXX.md)
