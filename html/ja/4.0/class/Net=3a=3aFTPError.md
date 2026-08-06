# class Net::FTPError < StandardError

net/ftp ライブラリ関連のエラー全般を表す例外クラスです。

サーバの応答コードがエラーを示している場合に発生します。

例外発生の原因となったサーバ応答は [Exception#message](../method/Exception/i/message.md)
から得られます。
