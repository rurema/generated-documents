# class CSV::InvalidEncodingError < CSV::MalformedCSVError

不正なバイト列を含む CSV をパースしようとしたときに発生する例外です。

入力のエンコーディングとして正しくないバイト列が見つかった場合に発生します。[CSV::MalformedCSVError](../class/CSV=3a=3aMalformedCSVError.md) のサブクラスなので、[CSV::MalformedCSVError](../class/CSV=3a=3aMalformedCSVError.md) を `rescue` しているコードでも捕捉できます。

```ruby title="例"
require "csv"

begin
  CSV.parse("a,b\n\xFF,1\n")
rescue CSV::MalformedCSVError => e
  p e.class    # => CSV::InvalidEncodingError
  p e.message  # => "Invalid byte sequence in UTF-8 in line 2."
end
```

## Class Methods

- [new](../method/CSV=3a=3aInvalidEncodingError/s/new.md)

## Instance Methods

- [encoding](../method/CSV=3a=3aInvalidEncodingError/i/encoding.md)
