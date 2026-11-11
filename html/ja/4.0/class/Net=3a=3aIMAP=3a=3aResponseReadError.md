# class Net::IMAP::ResponseReadError < Net::IMAP::Error

設定された上限のためにサーバからの応答を読めないときに発生する例外のクラスです。

実際にはこれを継承した [Net::IMAP::ResponseTooLargeError](../class/Net=3a=3aIMAP=3a=3aResponseTooLargeError.md) の例外が発生します。
