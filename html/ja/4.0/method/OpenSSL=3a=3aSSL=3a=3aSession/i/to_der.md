# OpenSSL::SSL::Session#to_der

### def to_der -> String

自身を DER 形式に変換します。

これによってセッションキャッシュをディスク上に保持できます。

- **raise** `OpenSSL::SSL::Session::SessionError` -- 変換に失敗した場合に発生します
