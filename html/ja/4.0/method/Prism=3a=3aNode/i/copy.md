# Prism::Node#copy

### def copy(**params) -> Prism::Node

自身と同じクラスの新しいノードを、指定したフィールドだけを差し替えて複製します。渡せるキーワードはノードクラスごとのフィールド名で、指定しなかったフィールドは自身の値を引き継ぎます。

```ruby title="例"
require "prism"

call = Prism.parse("1 + 2").value.statements.body[0]
copied = call.copy
p copied.class        # => Prism::CallNode
p copied.equal?(call) # => false
```
