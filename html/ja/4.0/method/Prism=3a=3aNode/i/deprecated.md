# Prism::Node#deprecated

### def deprecated(*replacements) -> ()

このノードの、別のフィールドに置き換えられた古いメソッドが呼び出されたときに、非推奨であることを示す警告を出力します。

生成された各ノードクラスの、名前が変更されたフィールドの読み出しメソッドが内部で使用するためのメソッドです。呼び出し元のメソッド名と、`replacements` に指定した代替メソッド名を含む警告メッセージを、`:deprecated` カテゴリの警告として([Kernel](../../../class/Kernel.md) の `warn` を使って)出力します。

- **param** `replacements` -- 代わりに使うべきメソッド名を文字列で 1 つ以上指定します。
