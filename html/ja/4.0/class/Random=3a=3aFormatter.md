# module Random::Formatter

生成した乱数を 16 進文字列や base64 文字列、UUID など、人が扱いやすい形式の文字列に整形するためのメソッド群を提供するモジュールです。

このモジュールは [Random](../class/Random.md) に include され、[SecureRandom](../class/SecureRandom.md) には
extend されています。ただし、以下の整形用メソッドが定義されるのは
`require "random/formatter"` を読み込んだとき(`require "securerandom"`
でも読み込まれます)です。読み込むと、[Random](../class/Random.md) のインスタンスと
[SecureRandom](../class/SecureRandom.md) の両方でこれらのメソッドが使えるようになります。

  - random_bytes
  - hex
  - base64
  - urlsafe_base64
  - alphanumeric
  - uuid など

これらのメソッドの詳しい説明は [SecureRandom](../class/SecureRandom.md) を参照してください。

## Instance Methods

- [alphanumeric](../method/Random=3a=3aFormatter/i/alphanumeric.md)
