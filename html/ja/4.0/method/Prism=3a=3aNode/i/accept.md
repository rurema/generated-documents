# Prism::Node#accept

### def accept(visitor) -> object

Visitor パターンの受け入れメソッドです。ノードの種類に応じた
`visitor.visit_xxx` を呼び出し、その戻り値を返します。

- **param** `visitor` -- `Prism::Visitor` (またはそのサブクラス)の
       インスタンスを指定します。
