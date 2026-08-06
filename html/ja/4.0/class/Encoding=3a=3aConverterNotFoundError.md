# class Encoding::ConverterNotFoundError < EncodingError

指定した名前のエンコーディング変換をする変換器が存在しない場合に発生する例外。

```ruby title="例"
"あ".encode("Foo")
# ~> Encoding::ConverterNotFoundError: code converter not found (UTF-8 to Foo)
```
