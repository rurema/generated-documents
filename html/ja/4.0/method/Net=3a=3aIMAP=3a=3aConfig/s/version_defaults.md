# Net::IMAP::Config.version_defaults

### def Net::IMAP::Config.version_defaults -> {object => Net::IMAP::Config}

版ごとの既定値の設定を、版の数値や名前をキーとして保持するハッシュを返します。

[Net::IMAP::Config.[]](../../../method/Net=3a=3aIMAP=3a=3aConfig/s/=5b=5d.md) はこのハッシュから設定を取り出します。
ハッシュも、値の設定も凍結されています。

キーは版の数値(`0.0` から `1.0` までの `0.1` 刻みの [Rational](../../../class/Rational.md) と [Float](../../../class/Float.md))と名前(`:original`、`:default`、`:current`、`:next`、`:future`)です。
キーに一致しない数値や文字列は、版の数値や名前に変換して探します。

- **SEE** [Net::IMAP::Config.[]](../../../method/Net=3a=3aIMAP=3a=3aConfig/s/=5b=5d.md)
