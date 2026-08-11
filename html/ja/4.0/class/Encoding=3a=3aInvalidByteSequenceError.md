# class Encoding::InvalidByteSequenceError < EncodingError

文字列がそのエンコーディングにおいて不正なバイト列である場合に発生する例外。

通常エンコーディング変換時に発生します。

```ruby title="例"
p "\x82\xa0".force_encoding("cp932").encode("UTF-8")
# => "あ"
"\x82\xa0".force_encoding("EUC-JP").encode("UTF-8")
# ~> Encoding::InvalidByteSequenceError: "\x82" on EUC-JP
```

## Instance Methods

- [destination_encoding](../method/Encoding=3a=3aInvalidByteSequenceError/i/destination_encoding.md)
- [destination_encoding_name](../method/Encoding=3a=3aInvalidByteSequenceError/i/destination_encoding_name.md)
- [error_bytes](../method/Encoding=3a=3aInvalidByteSequenceError/i/error_bytes.md)
- [incomplete_input?](../method/Encoding=3a=3aInvalidByteSequenceError/i/incomplete_input=3f.md)
- [readagain_bytes](../method/Encoding=3a=3aInvalidByteSequenceError/i/readagain_bytes.md)
- [source_encoding](../method/Encoding=3a=3aInvalidByteSequenceError/i/source_encoding.md)
- [source_encoding_name](../method/Encoding=3a=3aInvalidByteSequenceError/i/source_encoding_name.md)
