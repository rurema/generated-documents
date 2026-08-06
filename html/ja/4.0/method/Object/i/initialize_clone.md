# Object#initialize_clone

### def initialize_clone(obj, freeze: nil) -> object
{: since="1.9.2"}

[Object#clone](../../../method/Object/i/clone.md) がオブジェクトを複製する際に呼び出すメソッドです。

デフォルトの実装は freeze キーワード引数を無視して [Object#initialize_copy](../../../method/Object/i/initialize_copy.md) を呼び出し、self を返します。複製したオブジェクトを freeze するかどうかは、このメソッドの呼び出し元である [Object#clone](../../../method/Object/i/clone.md) が判断します。

freeze キーワード引数には、[Object#clone](../../../method/Object/i/clone.md) に渡された freeze の値がそのまま渡されます。
clone と dup で挙動を変えたいなどの理由でこのメソッドを再定義する場合は、
freeze キーワード引数を受け取り、super へそのまま渡すようにしてください。

initialize_clone という名前のメソッドは自動的に private に設定されます。

- **param** `freeze` -- [Object#clone](../../../method/Object/i/clone.md) に渡された freeze の値(true, false, nil のいずれか)が渡されます。
- **SEE** [Object#clone](../../../method/Object/i/clone.md), [Object#initialize_copy](../../../method/Object/i/initialize_copy.md), [Object#initialize_dup](../../../method/Object/i/initialize_dup.md)
