# Gem::Package::TarWriter::BoundedStream#write

### def write(data) -> Integer

与えられたデータを自身に関連付けられた IO に書き込みます。

- **param** `data` -- 書き込むデータを指定します。

- **return** -- 書き込んだデータのサイズを返します。

- **raise** `Gem::Package::TarWriter::FileOverflow` -- [Gem::Package::TarWriter::BoundedStream#limit](../../../method/Gem=3a=3aPackage=3a=3aTarWriter=3a=3aBoundedStream/i/limit.md) を越えて
       書き込もうとした場合に発生します。
