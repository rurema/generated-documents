# Net::IMAP::Config#responses_without_block

### def responses_without_block -> Symbol

[Net::IMAP#responses](../../../method/Net=3a=3aIMAP/i/responses.md) を `type` もブロックも渡さずに呼んだときの動作を返します。

値の意味は次のとおりです。

- `:silence_deprecation_warning` のときは、警告を出さずに記録のハッシュそのものを返します。
- `:warn` のときは、非推奨の警告を出して記録のハッシュそのものを返します。
- `:frozen_dup` のときは、記録のハッシュを凍結した複製(値の配列も凍結したもの)を返します。
- `:raise` のときは、[ArgumentError](../../../class/ArgumentError.md) が発生します。

記録のハッシュそのものを扱うのはスレッド安全ではありません。

既定値は `:frozen_dup` です。

版ごとの既定値は、`0.4` 以前が `:silence_deprecation_warning`、`0.5` が `:warn`、`0.6` 以降が `:frozen_dup` です。


- **SEE** [Net::IMAP::Config#responses_without_block=](../../../method/Net=3a=3aIMAP=3a=3aConfig/i/responses_without_block=3d.md), [Net::IMAP#responses](../../../method/Net=3a=3aIMAP/i/responses.md)
