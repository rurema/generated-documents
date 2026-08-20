# Fiddle::MemoryView#sub_offsets

### def sub_offsets -> [Integer] | nil

メモリビューがネストされた配列をエクスポートする場合に、それぞれの次元におけるオフセットからなる、長さ [ndim](../../../method/Fiddle=3a=3aMemoryView/i/ndim.md) の配列を返します。メモリビューが平坦な配列の場合は `nil` になることがあります。

[#release](../../../method/Fiddle=3a=3aMemoryView/i/release.md) を呼んだ後は `nil` になります。
