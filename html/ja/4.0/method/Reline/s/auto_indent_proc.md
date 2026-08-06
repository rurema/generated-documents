# Reline.auto_indent_proc

### def Reline.auto_indent_proc -> Proc | nil
{: since="2.7"}
### def Reline.auto_indent_proc=(proc)
{: since="2.7"}

複数行編集時に、行頭の自動インデントの幅を計算する [Proc](../../../class/Proc.md)
オブジェクトを取得/設定します。デフォルトは `nil` です。

`proc` は次の 4 つの引数を受け取り、インデントに使う半角スペースの個数を整数で返すようにします。`nil`
を返すとインデントを変更しません。対象の行の行頭の空白は、返した個数の半角スペースに置き換えられます。

- `lines`: 入力中の各行の文字列の配列
- `line_index`: インデントを計算する対象の行の `lines` 内の位置
- `byte_pointer`: 行内のカーソルのバイト単位の位置
- `is_newline`: 改行の入力直後かどうか

- **param** `proc` -- インデント幅を返す [Proc](../../../class/Proc.md) オブジェクト、または `nil` を指定します。
