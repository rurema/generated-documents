# ObjectSpace::InternalObjectWrapper#internal_object_id

### def internal_object_id -> Integer

ラップしている内部オブジェクトの [Object#object_id](../../../method/Object/i/object_id.md) を返します。

この値は `ObjectSpace::InternalObjectWrapper` のインスタンスではなく、ラップされている内部オブジェクトを識別するものです。デバッグやイントロスペクションにだけ使ってください。内部オブジェクトの object_id は処理系に依存します。
