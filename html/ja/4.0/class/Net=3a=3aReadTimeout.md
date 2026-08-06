# class Net::ReadTimeout < Timeout::Error

データを読み出すときにタイムアウトしたときに発生する例外です。

タイムアウトまでの時間は [Net::HTTP#read_timeout=](../method/Net=3a=3aHTTP/i/read_timeout=3d.md)、
[Net::FTP#read_timeout=](../method/Net=3a=3aFTP/i/read_timeout=3d.md) などで設定します。
