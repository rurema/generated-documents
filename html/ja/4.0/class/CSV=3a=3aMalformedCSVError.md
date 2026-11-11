# class CSV::MalformedCSVError < RuntimeError

不正な CSV をパースしようとしたときに発生する例外です。

入力に不正なバイト列が含まれていた場合は、サブクラスの [CSV::InvalidEncodingError](../class/CSV=3a=3aInvalidEncodingError.md) が発生します。

## Class Methods

- [new](../method/CSV=3a=3aMalformedCSVError/s/new.md)

## Instance Methods

- [line_number](../method/CSV=3a=3aMalformedCSVError/i/line_number.md)
- [lineno](../method/CSV=3a=3aMalformedCSVError/i/lineno.md)
