# Zlib?.deflate

### module_function def deflate(string, level = Zlib::DEFAULT_COMPRESSION ) -> String

引数 string を圧縮します。[Zlib::Deflate.deflate](../../../method/Zlib=3a=3aDeflate/s/deflate.md) と同じです。

- **param** `string` -- 圧縮する文字列を指定します。
- **param** `level` -- 圧縮の水準を詳細に指定します。
             有効な値は [Zlib::NO_COMPRESSION](../../../method/Zlib/c/NO_COMPRESSION.md),
             [Zlib::BEST_SPEED](../../../method/Zlib/c/BEST_SPEED.md), [Zlib::BEST_COMPRESSION](../../../method/Zlib/c/BEST_COMPRESSION.md),
             [Zlib::DEFAULT_COMPRESSION](../../../method/Zlib/c/DEFAULT_COMPRESSION.md) 及び 0 から 9 の整数です。

- **SEE** [Zlib::Deflate.deflate](../../../method/Zlib=3a=3aDeflate/s/deflate.md)
