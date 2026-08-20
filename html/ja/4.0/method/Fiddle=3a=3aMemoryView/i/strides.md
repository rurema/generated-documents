# Fiddle::MemoryView#strides

### def strides -> [Integer] | nil

それぞれの次元で次の要素まで進むのに何バイトスキップすればよいかを示す、長さ [ndim](../../../method/Fiddle=3a=3aMemoryView/i/ndim.md) の配列を返します。各要素は負数になることもあります。メモリビューが行指向の contiguous （連続配置）な配列の場合は `nil` になることもあります。

[#release](../../../method/Fiddle=3a=3aMemoryView/i/release.md) を呼んだ後は `nil` になります。
