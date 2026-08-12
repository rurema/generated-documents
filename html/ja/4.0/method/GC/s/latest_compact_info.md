# GC.latest_compact_info

### def GC.latest_compact_info -> Hash

最後に実行されたヒープコンパクション([GC.compact](../../../method/GC/s/compact.md) など)の統計情報を返します。

返り値の [Hash](../../../class/Hash.md) のキーは以下のとおりで、値はいずれもオブジェクトの型ごとの件数を表す [Hash](../../../class/Hash.md) です(コンパクションがまだ実行されていない場合は空の [Hash](../../../class/Hash.md))。

- `:considered` -- 移動の対象として検討されたオブジェクト数
- `:moved` -- 実際に移動されたオブジェクト数
- `:moved_up` -- 移動先のアドレスが元より高かったオブジェクト数
- `:moved_down` -- 移動先のアドレスが元より低かったオブジェクト数

- **SEE** [GC.compact](../../../method/GC/s/compact.md), [GC.auto_compact](../../../method/GC/s/auto_compact.md)
