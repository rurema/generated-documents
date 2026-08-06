# Prism::Node.fields

### def Prism::Node.fields -> [Prism::Reflection::Field]

このノードクラスが持つフィールド(子ノードや属性)を表す
`Prism::Reflection::Field` の配列を返します。構文木の各ノード・各フィールドを再帰的に処理するツールを書くときのリフレクション用途に使えます。

`Prism::Node` 自身に対して呼び出すと [NoMethodError](../../../class/NoMethodError.md) が発生します。
サブクラスに対して呼び出してください。
