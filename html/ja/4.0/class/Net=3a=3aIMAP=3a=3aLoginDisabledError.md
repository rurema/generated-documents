# class Net::IMAP::LoginDisabledError < Net::IMAP::Error

サーバの機能一覧に LOGINDISABLED があるために [Net::IMAP#login](../method/Net=3a=3aIMAP/i/login.md) で LOGIN コマンドを送らないときに発生する例外のクラスです。

LOGINDISABLED を確認するかどうかは [Net::IMAP::Config#enforce_logindisabled](../method/Net=3a=3aIMAP=3a=3aConfig/i/enforce_logindisabled.md) の設定で決まります。
この例外が発生するときは、LOGIN コマンドはサーバに送られません。
既定のメッセージは "Remote server has disabled the LOGIN command" です。
