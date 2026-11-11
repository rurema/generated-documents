# Net::IMAP::Config#parser_max_deprecated_uidplus_data_size

### def parser_max_deprecated_uidplus_data_size -> Integer

互換のために残されている属性の値を返します。

この属性の値は無視され、COPYUID と APPENDUID の応答コードの解析にも警告にも影響しません。
既定値は 0 です。
版ごとの既定値は、`0.3` 以前が 10000、`0.4` が 1000、`0.5` が 100、`0.6` 以降が 0 です。


- **SEE** [Net::IMAP::Config#parser_max_deprecated_uidplus_data_size=](../../../method/Net=3a=3aIMAP=3a=3aConfig/i/parser_max_deprecated_uidplus_data_size=3d.md)
