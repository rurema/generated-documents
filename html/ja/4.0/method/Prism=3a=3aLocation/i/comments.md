# Prism::Location#comments

### def comments -> Array

この位置に関連付けられたコメント([Prism::Comment](../../../class/Prism=3a=3aComment.md) のサブクラスのインスタンス)の配列を返します。前に付くコメント、後ろに付くコメントの順に並びます。

コメントの関連付けは [Prism::ParseResult#attach_comments!](../../../method/Prism=3a=3aParseResult/i/attach_comments=21.md) を呼び出したときに行われます。呼び出す前は空配列です。
