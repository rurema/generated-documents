# class Net::IMAP::ByeResponseError < Net::IMAP::ResponseError

サーバから "BYE" レスポンスが来た場合に発生する例外のクラスです。
ログインが拒否された場合や、クライアントが無反応でタイムアウトした場合に発生します。
