# Zlib?.adler32

### module_function def adler32(string = nil, adler = nil) -> Integer
### module_function def adler32(io, adler = nil) -> Integer

string の Adler-32 チェックサムを計算し、adler を更新した値を返します。string が省略された場合は
Adler-32 チェックサムの初期値を返します。adler が省略された場合は adler に初期値が与えらたものとして計算します。

- **param** `string` -- string の Adler-32 チェックサムが計算されます。
- **param** `io` -- IO が指定された場合は [IO#read](../../../method/IO/i/read.md) で nil を返すまで読み込んで、読み込んだデータ全体の Adler-32 チェックサムが計算されます。
- **param** `adler` --  adler を整数で指定します。
