# Enumerator::Product#rewind

### def rewind -> self

列挙状態を巻き戻します。

self が持つ各オブジェクトに対して、逆順で rewind メソッドを呼びます。
ただし rewind メソッドを持たないオブジェクトに対しては呼びません。
