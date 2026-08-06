# class Zlib::GzipFile < Object

gzip 形式の圧縮ファイルを扱う抽象クラス。
具体的な読み込み/書き込み操作は、それぞれサブクラスの
[Zlib::GzipReader](../class/Zlib=3a=3aGzipReader.md), [Zlib::GzipWriter](../class/Zlib=3a=3aGzipWriter.md) で定義されています。

IO クラスのインスタンス (又は IO クラスのインスタンスと同じメソッドを持つオブジェクト) と関連付けて使用します。

## Class Methods

- [new](../method/Zlib=3a=3aGzipFile/s/new.md)
- [open](../method/Zlib=3a=3aGzipFile/s/open.md)
- [wrap](../method/Zlib=3a=3aGzipFile/s/wrap.md)

## Instance Methods

- [close](../method/Zlib=3a=3aGzipFile/i/close.md)
- [closed?](../method/Zlib=3a=3aGzipFile/i/closed=3f.md)
- [to_io](../method/Zlib=3a=3aGzipFile/i/to_io.md)
- [comment](../method/Zlib=3a=3aGzipFile/i/comment.md)
- [crc](../method/Zlib=3a=3aGzipFile/i/crc.md)
- [finish](../method/Zlib=3a=3aGzipFile/i/finish.md)
- [level](../method/Zlib=3a=3aGzipFile/i/level.md)
- [mtime](../method/Zlib=3a=3aGzipFile/i/mtime.md)
- [orig_name](../method/Zlib=3a=3aGzipFile/i/orig_name.md)
- [os_code](../method/Zlib=3a=3aGzipFile/i/os_code.md)
- [path](../method/Zlib=3a=3aGzipFile/i/path.md)
- [sync](../method/Zlib=3a=3aGzipFile/i/sync.md)
- [sync=](../method/Zlib=3a=3aGzipFile/i/sync=3d.md)
