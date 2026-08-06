# Kernel$LDFLAGS

### gvar $LDFLAGS -> String

拡張ライブラリをリンクするときのリンカのオプション、ライブラリファイルのディレクトリを指定する文字列です。

[Kernel#find_library](../../../method/Kernel/i/find_library.md) または [Kernel#dir_config](../../../method/Kernel/i/dir_config.md)
の検査が成功すると、$LDFLAGS の値に "-Ldir" を追加します。
