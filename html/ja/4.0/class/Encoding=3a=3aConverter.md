# class Encoding::Converter < Object

文字エンコーディング(文字符号化方式)の変換器のクラスです。既存の変換器より一段細かな処理が可能となります。

Encoding::Converter を用いて変換を行う場合は、[Encoding::Converter#convert](../method/Encoding=3a=3aConverter/i/convert.md) か、より細かな変換処理が可能な [Encoding::Converter#primitive_convert](../method/Encoding=3a=3aConverter/i/primitive_convert.md) が利用できます。
エンコーディングを変換するメソッドはこの他に [String#encode](../method/String/i/encode.md), [NKF?.nkf](../method/NKF/m/nkf.md)
などがあります。

## Class Methods

- [asciicompat_encoding](../method/Encoding=3a=3aConverter/s/asciicompat_encoding.md)
- [new](../method/Encoding=3a=3aConverter/s/new.md)
- [search_convpath](../method/Encoding=3a=3aConverter/s/search_convpath.md)

## Instance Methods

- [convert](../method/Encoding=3a=3aConverter/i/convert.md)
- [convpath](../method/Encoding=3a=3aConverter/i/convpath.md)
- [destination_encoding](../method/Encoding=3a=3aConverter/i/destination_encoding.md)
- [finish](../method/Encoding=3a=3aConverter/i/finish.md)
- [insert_output](../method/Encoding=3a=3aConverter/i/insert_output.md)
- [inspect](../method/Encoding=3a=3aConverter/i/inspect.md)
- [last_error](../method/Encoding=3a=3aConverter/i/last_error.md)
- [primitive_convert](../method/Encoding=3a=3aConverter/i/primitive_convert.md)
- [primitive_errinfo](../method/Encoding=3a=3aConverter/i/primitive_errinfo.md)
- [putback](../method/Encoding=3a=3aConverter/i/putback.md)
- [replacement](../method/Encoding=3a=3aConverter/i/replacement.md)
- [replacement=](../method/Encoding=3a=3aConverter/i/replacement=3d.md)
- [source_encoding](../method/Encoding=3a=3aConverter/i/source_encoding.md)
