# class Net::OpenTimeout < Timeout::Error

コネクションを開こうとしたときにタイムアウトしたときに発生する例外です。

タイムアウトまでの時間は [Net::HTTP#open_timeout=](../method/Net=3a=3aHTTP/i/open_timeout=3d.md)、
[Net::FTP#open_timeout=](../method/Net=3a=3aFTP/i/open_timeout=3d.md) などで設定します。
