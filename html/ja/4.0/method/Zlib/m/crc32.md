# Zlib?.crc32

### module_function def crc32(string = nil, crc = nil) -> Integer
### module_function def crc32(io, crc = nil) -> Integer

string の CRC チェックサムを計算し、crc を更新した値を返します。string が省略された場合は
CRC チェックサムの初期値を返します。crc が省略された場合は crc に初期値が与えらたものとして計算します。

- **param** `string` -- string の CRC チェックサムが計算されます。
- **param** `io` -- IO が指定された場合は [IO#read](../../../method/IO/i/read.md) で nil を返すまで
       読み込んで、読み込んだデータ全体の CRC チェックサムが
       計算されます。
- **param** `crc` --  crc を整数で指定します。
