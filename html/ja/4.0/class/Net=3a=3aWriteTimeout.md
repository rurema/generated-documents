# class Net::WriteTimeout < Timeout::Error

データを書き込むときにタイムアウトしたときに発生する例外です。

タイムアウトまでの時間は [Net::HTTP#write_timeout=](../method/Net=3a=3aHTTP/i/write_timeout=3d.md)、
`Net::FTP#write_timeout=` などで設定します。
