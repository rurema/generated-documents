# class Net::IMAP::FlagCountError < Net::IMAP::Error

サーバからのレスポンスに含まれるフラグが多すぎるときに発生する例外です。

この上限は [Net::IMAP.max_flag_count=](../method/Net=3a=3aIMAP/s/max_flag_count=3d.md) で設定します。
