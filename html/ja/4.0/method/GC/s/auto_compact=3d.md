# GC.auto_compact=

### def GC.auto_compact=(bool)

[GC.compact](../../../method/GC/s/compact.md) をフルGCで行うかどうかを制御します。

true を設定するとフルGCのタイミングでヒープをコンパクションします。

この機能を有効にするとフルGCのパフォーマンスが低下します。

デフォルトは false です。

詳細は[feature:17176]を参照してください。

- **param** `bool` -- フルGCでコンパクションするかどうかを true か false で設定します。

- **SEE** [GC.compact](../../../method/GC/s/compact.md) [GC.auto_compact](../../../method/GC/s/auto_compact.md)
