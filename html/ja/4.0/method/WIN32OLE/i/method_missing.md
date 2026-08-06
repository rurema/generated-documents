# WIN32OLE#method_missing

### def method_missing(id, *args) -> object | nil

[WIN32OLE#invoke](../../../method/WIN32OLE/i/invoke.md)メソッドを実行します。

WIN32OLEのインスタンスに対して、このリファレンスに明記されていないメソッドを呼び出した場合、OLEオートメーションサーバのメソッド（プロパティ）呼び出しと解釈します。

- **param** `id` -- メソッド名をシンボルで指定します。
- **param** `args` -- メソッドの引数を指定します。
- **return** -- メソッドの返り値。ただし返り値を持たないメソッドの場合はnil。
- **raise** `RuntimeError` -- idが有効なシンボルではありません。
- **raise** `WIN32OLERuntimeError` -- オートメーションサーバの呼び出しに失敗しました。
                            理由はメッセージのHRESULTを調べてください。

WIN32OLEはOLEオートメーションオブジェクトのメソッド呼び出しを
method_missingを利用して実行します。このためWIN32OLEを継承するクラスを作成してmethod_missingをオーバーライドする場合、superを呼び出してください。

- **SEE** [WIN32OLE#invoke](../../../method/WIN32OLE/i/invoke.md)
