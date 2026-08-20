# Fiddle::MemoryView#to_s

### def to_s -> String

データを、エンコーディングが ASCII-8BIT の `String` として返します。

この文字列はメモリ領域をメモリビューと共有し、データをコピーしません。

[#release](../../../method/Fiddle=3a=3aMemoryView/i/release.md) を呼んだ後は空文字列になります。
