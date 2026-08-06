# StringIO#write_nonblock

### def syswrite(obj)    -> Integer
### def write_nonblock(obj) -> Integer

自身に obj を書き込みます。[StringIO#write](../../../method/StringIO/i/write.md) と同じです。

- **param** `obj` -- 書き込みたいオブジェクトを指定します。

- **raise** `IOError` -- 自身が書き込み用にオープンされていなければ発生します。
