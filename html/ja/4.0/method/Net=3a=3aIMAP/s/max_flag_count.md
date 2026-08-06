# Net::IMAP.max_flag_count

### def Net::IMAP.max_flag_count -> Integer

サーバからのレスポンスに含まれる flag の上限を返します。

これを越えた flag がレスポンスに含まれている場合は、
[Net::IMAP::FlagCountError](../../../class/Net=3a=3aIMAP=3a=3aFlagCountError.md) 例外が発生します。

- **SEE** [Net::IMAP.max_flag_count=](../../../method/Net=3a=3aIMAP/s/max_flag_count=3d.md)
