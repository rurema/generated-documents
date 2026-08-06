# Net::IMAP.max_flag_count=

### def Net::IMAP.max_flag_count=(count)

サーバからのレスポンスに含まれる flag の上限を設定します。

これを越えた flag がレスポンスに含まれている場合は、
[Net::IMAP::FlagCountError](../../../class/Net=3a=3aIMAP=3a=3aFlagCountError.md) 例外が発生します。

デフォルトは 10000 です。通常は変える必要はないでしょう。

- **param** `count` -- 設定する最大値の整数
- **SEE** [Net::IMAP.max_flag_count](../../../method/Net=3a=3aIMAP/s/max_flag_count.md)
