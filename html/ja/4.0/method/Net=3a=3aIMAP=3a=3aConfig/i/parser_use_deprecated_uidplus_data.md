# Net::IMAP::Config#parser_use_deprecated_uidplus_data

### def parser_use_deprecated_uidplus_data -> Symbol | bool

COPYUID と APPENDUID の応答コードを解析するときに非推奨の警告を出すかどうかを返します。

この属性の値は解析の結果に影響しません。
true か `:up_to_max_size` のときは、COPYUID と APPENDUID の応答コードを解析するたびに非推奨の警告(カテゴリは `:deprecated`)を出します。
false のときは警告を出しません。
既定値は false です。
版ごとの既定値は、`0.4` 以前が true、`0.5` が `:up_to_max_size`、`0.6` 以降が false です。


- **SEE** [Net::IMAP::Config#parser_use_deprecated_uidplus_data=](../../../method/Net=3a=3aIMAP=3a=3aConfig/i/parser_use_deprecated_uidplus_data=3d.md)
