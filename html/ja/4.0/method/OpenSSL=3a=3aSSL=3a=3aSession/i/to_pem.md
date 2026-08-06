# OpenSSL::SSL::Session#to_pem

### def to_pem -> String

自身を PEM 形式に変換します。

これによってセッションキャッシュをディスク上に保持できます。

- **raise** `OpenSSL::SSL::Session::SessionError` -- 変換に失敗した場合に発生します
