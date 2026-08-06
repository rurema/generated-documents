# class Net::IMAP::BadResponseError < Net::IMAP::ResponseError

サーバから "BAD" レスポンスが来た場合に発生する例外のクラスです。
クライアントからのコマンドが IMAP の規格から外れている場合やサーバ内部エラーの場合に発生します。
