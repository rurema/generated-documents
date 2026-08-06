# Kernel$-v

### gvar $VERBOSE -> bool | nil
### gvar $-v      -> bool | nil
### gvar $-w      -> bool | nil

冗長メッセージフラグです。Rubyインタプリタへのコマンドラインオプション -v でセットされます。

警告レベルは三段階あり、それぞれ以下の通りです。

- **`nil`**:
    警告を出力しない
- **`false`**:
    重要な警告のみ出力 (デフォルト)
- **`true`**:
    すべての警告を出力する

$VERBOSE に nil, false 以外を代入すると値は true になります。

$VERBOSE の値はコマンドラインオプション
-W でも設定できます。
-W0 オプションで nil、
-W1 オプションで false、
-W2, -W オプションで true が設定されます。
-d, -v, -w の各オプションによっても
true が設定されます。

$VERBOSE はグローバルスコープです。

- **SEE** [spec/rubycmd](../../../doc/spec=2frubycmd.md)
